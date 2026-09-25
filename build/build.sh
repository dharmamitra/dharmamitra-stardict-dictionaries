#!/usr/bin/env bash
# Build the release zips for one MITRA lexicon from its StarDict folder.
#   build/build.sh <stardict-dir> <short-name> <out-dir>
#   e.g. build/build.sh ~/data/dicts/mitra-tib-llm-2026 tib ./release
#
# Produces <out-dir>/mitra-stardict-<short>-lexicon-2026.zip  (.dict compressed with dictzip)
#      and <out-dir>/mitra-appledict-<short>-lexicon-2026.zip (built .dictionary bundle)
#
# Needs: dictzip (Debian/Ubuntu package "dictzip"), pyglossary >= 5.4 (Python >= 3.11),
#        Apple's Dictionary Development Kit (Xcode "Additional Tools") and xmllint.
set -euo pipefail
SRC=$(cd "$1" && pwd); SHORT=$2; OUT=$(mkdir -p "$3" && cd "$3" && pwd)
NAME=$(basename "$SRC")
HERE=$(cd "$(dirname "$0")" && pwd)
DDK=${DDK:-"/Applications/Dictionary Development Kit"}
WORK=$(mktemp -d)

# StarDict: dictzip the .dict (keeps random access), then zip the folder.
mkdir "$WORK/$NAME"
cp "$SRC/$NAME".{idx,ifo} "$WORK/$NAME/"
[ -f "$SRC/$NAME.syn" ] && cp "$SRC/$NAME.syn" "$WORK/$NAME/"
dictzip -c "$SRC/$NAME.dict" > "$WORK/$NAME/$NAME.dict.dz"
(cd "$WORK" && zip -r -q "$OUT/mitra-stardict-$SHORT-lexicon-2026.zip" "$NAME")

# Apple Dictionary: pyglossary writes the DDK source (into an empty folder),
# then the plist/CSS from build/appledict/ replace its defaults
# (display name; the duplicate <h1> headword is hidden).
mkdir -p "$WORK/apple"
pyglossary --no-progress-bar "$SRC/$NAME.ifo" "$WORK/apple/$NAME" --read-format=Stardict --write-format=AppleDict
cp "$HERE/appledict/$NAME.plist" "$HERE/appledict/$NAME.css" "$WORK/apple/$NAME/"
xmllint --stream --noout "$WORK/apple/$NAME/$NAME.xml"
(cd "$WORK/apple/$NAME" && make "DICT_BUILD_TOOL_DIR=\"$DDK\"")
ditto -c -k --keepParent "$WORK/apple/$NAME/objects/$NAME.dictionary" "$OUT/mitra-appledict-$SHORT-lexicon-2026.zip"

rm -rf "$WORK"
ls -la "$OUT"
