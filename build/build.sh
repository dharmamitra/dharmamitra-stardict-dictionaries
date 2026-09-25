#!/usr/bin/env bash
# Build the release zips for one MITRA dictionary from its StarDict folder.
#   build/build.sh <stardict-dir> <short-name> <out-dir>   (short-name: tib-lexicon, skt-tib, ...)
#   e.g. build/build.sh ~/data/dicts/mitra-tib-llm-2026 tib-lexicon-2026 ./release
#
# Produces <out-dir>/mitra-stardict-<short>.zip  (.dict compressed with dictzip when < 1.8 GB)
#      and <out-dir>/mitra-appledict-<short>.zip (built .dictionary bundle)
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
# dictzip 1.13 ignores -c and compresses in place, and its chunk table overflows
# above ~1.8 GB (corrupt .dz), so copy first and leave large dictionaries plain.
if [ -f "$SRC/$NAME.dict.dz" ]; then
  cp "$SRC/$NAME.dict.dz" "$WORK/$NAME/"
else
  cp "$SRC/$NAME.dict" "$WORK/$NAME/"
  if [ "$(stat -c %s "$SRC/$NAME.dict" 2>/dev/null || stat -f %z "$SRC/$NAME.dict")" -lt 1800000000 ]; then
    dictzip "$WORK/$NAME/$NAME.dict"
  fi
fi
(cd "$WORK" && zip -r -q "$OUT/mitra-stardict-$SHORT.zip" "$NAME")

# Apple Dictionary: pyglossary writes the DDK source (into an empty folder),
# then the plist/CSS from build/appledict/, if present for this dictionary, replace
# its defaults (lexica: display name; the duplicate <h1> headword is hidden).
mkdir -p "$WORK/apple"
pyglossary --no-progress-bar "$SRC/$NAME.ifo" "$WORK/apple/$NAME" --read-format=Stardict --write-format=AppleDict
if [ -f "$HERE/appledict/$NAME.plist" ]; then
  cp "$HERE/appledict/$NAME.plist" "$HERE/appledict/$NAME.css" "$WORK/apple/$NAME/"
fi
xmllint --stream --noout "$WORK/apple/$NAME/$NAME.xml"
(cd "$WORK/apple/$NAME" && make "DICT_BUILD_TOOL_DIR=\"$DDK\"")
ditto -c -k --keepParent "$WORK/apple/$NAME/objects/$NAME.dictionary" "$OUT/mitra-appledict-$SHORT.zip"

rm -rf "$WORK"
ls -la "$OUT"
