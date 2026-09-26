<p align="center">
  <img src="logo-skt-tib.png" alt="Dharmamitra Sanskrit-Tibetan Dictionary Logo" width="200"/>
</p>

# Dharmamitra StarDict Dictionaries

Bilingual and multilingual dictionaries for Sanskrit, Tibetan and Buddhist Chinese, generated automatically from parallel texts by [Dharmamitra](https://dharmamitra.org). They are available for GoldenDict and other StarDict viewers, and as native macOS dictionaries for Dictionary.app.

## MITRA Lexica (September 2026)

The **MITRA Tibetan Lexicon** and the **MITRA Sanskrit Lexicon** are the current release. Each entry lists how a word is rendered in the other languages of the corpus, how often each rendering is attested, grammatical information, and cited example passages with the word highlighted in both languages and linked to the source text on dharmamitra.org.

### Downloads

| Dictionary | GoldenDict / StarDict | macOS Dictionary.app |
|---|---|---|
| MITRA Tibetan Lexicon (2026.09.26) | [mitra-stardict-tib-lexicon-2026.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-tib-lexicon-2026.zip) (198 MB) | [mitra-appledict-tib-lexicon-2026.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-tib-lexicon-2026.zip) (382 MB) |
| MITRA Sanskrit Lexicon (2026.09.24) | [mitra-stardict-skt-lexicon-2026.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-skt-lexicon-2026.zip) (271 MB) | [mitra-appledict-skt-lexicon-2026.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-skt-lexicon-2026.zip) (512 MB) |

SHA-256 checksums: [SHA256SUMS-lexicon-2026.txt](https://dharmamitra.org/pub/dictionaries/SHA256SUMS-lexicon-2026.txt)

After unzipping, the StarDict versions take about 220 MB (Tibetan) and 284 MB (Sanskrit). Installed, the macOS versions take 441 MB and 595 MB.

### Statistics

| | MITRA Tibetan Lexicon | MITRA Sanskrit Lexicon |
|---|---:|---:|
| Headwords | 223,486 | 332,328 |
| Additional lookup keys (synonyms) | 459,173 | 648,144 |
| Numbered senses | 251,937 | 276,692 |
| Cited example passages | 618,208 | 982,523 |
| Entries with English renderings | 123,256 | 234,751 |
| Entries with Sanskrit renderings | 123,826 | — |
| Entries with Tibetan renderings | — | 148,543 |
| Entries with Chinese renderings | 44,110 | 51,346 |
| Linked source texts on dharmamitra.org | 8,403 | 4,113 |
| Minimum attestations | 3 per entry | 2 per rendering |

**Tibetan Lexicon.** Headwords are Tibetan stems in Wylie. Tibetan script, with and without the final tsheg, and inflected forms such as the agentive *bla mas* or terminative *bla mar* are lookup keys that lead to the same entry. Entries include part-of-speech profiles from a Classical Tibetan tagger, verb paradigms, and cross-references to derived forms, variants, and synonyms recorded in the Hopkins, 84000 and Rangjung Yeshe glossaries. 203,429 entries have one sense and 20,057 have two or more.

**Sanskrit Lexicon.** Headwords are Sanskrit lemmas in IAST, following the Digital Corpus of Sanskrit. 258,497 lemma entries carry senses, grammatical profiles and references to Böhtlingk & Roth (PWG). A further 73,831 entries are attested inflected forms (e.g. *atītam*, *gatvā*), each pointing to its root. Diacritic-free and hyphen-free spellings (`prajna`, `sarvadharma`) are lookup keys, so IAST input is optional. The 1,273 spellings that belong to two headwords (e.g. *āha* as a noun and as the perfect of *ah*) are merged into one entry with both articles.

The entries were drafted by a language model (Gemma 4 31B) from word alignments in the Dharmamitra parallel corpora, and every entry or rendering meets the attestation minimum shown above.

### Installation

**GoldenDict / GoldenDict-ng (Windows, Linux, macOS)**
1. Unzip the StarDict zip into a folder of your choice.
2. In GoldenDict, go to *Edit → Dictionaries → Sources → Files*, add that folder and click *Rescan*.

**macOS Dictionary.app**
1. Unzip the Apple zip. You get `mitra-tib-llm-2026.dictionary` or `mitra-skt-llm-2026.dictionary`.
2. Move it to `~/Library/Dictionaries/` (in Finder: *Go → Go to Folder…* and paste the path).
3. Open Dictionary.app, go to *Settings*, and tick **MITRA Tibetan Lexicon** / **MITRA Sanskrit Lexicon**. Drag them up the list to change their order.

The words are then also available through *Look Up* (three-finger tap or Ctrl-Cmd-D) in any macOS app. To update, replace the old `.dictionary` folder and restart Dictionary.app.

## Pairwise dictionaries (September 2026)

Six directional dictionaries between Sanskrit, Tibetan and Chinese, extracted from word alignments in parallel sentences.

Each entry opens with the list of all renderings in the other language, ranked by how often they occur, with counts and shares. Below that, example sentence pairs for the most frequent renderings show the word highlighted on both sides, with links to the source texts on dharmamitra.org. Tibetan is always given in Tibetan script with Wylie alongside, both for headwords and renderings and in the example sentences. Noisy pairings and function words have been filtered out.

| Direction | Headwords | Aligned occurrences | GoldenDict / StarDict | macOS Dictionary.app |
|---|---:|---:|---|---|
| Sanskrit → Tibetan | 866,021 | 6,875,779 | [mitra-stardict-skt-tib-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-skt-tib-2026-09-26.zip) (244 MB) | [mitra-appledict-skt-tib-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-skt-tib-2026-09-26.zip) (1.06 GB) |
| Tibetan → Sanskrit | 600,018 | 6,875,779 | [mitra-stardict-tib-skt-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-tib-skt-2026-09-26.zip) (254 MB) | [mitra-appledict-tib-skt-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-tib-skt-2026-09-26.zip) (853 MB) |
| Chinese → Tibetan | 329,328 | 2,132,221 | [mitra-stardict-chn-tib-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-chn-tib-2026-09-26.zip) (166 MB) | [mitra-appledict-chn-tib-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-chn-tib-2026-09-26.zip) (433 MB) |
| Tibetan → Chinese | 320,516 | 2,132,221 | [mitra-stardict-tib-chn-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-tib-chn-2026-09-26.zip) (164 MB) | [mitra-appledict-tib-chn-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-tib-chn-2026-09-26.zip) (469 MB) |
| Sanskrit → Chinese | 166,315 | 1,347,447 | [mitra-stardict-skt-chn-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-skt-chn-2026-09-26.zip) (44 MB) | [mitra-appledict-skt-chn-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-skt-chn-2026-09-26.zip) (173 MB) |
| Chinese → Sanskrit | 99,230 | 1,347,447 | [mitra-stardict-chn-skt-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-stardict-chn-skt-2026-09-26.zip) (40 MB) | [mitra-appledict-chn-skt-2026-09-26.zip](https://dharmamitra.org/pub/dictionaries/mitra-appledict-chn-skt-2026-09-26.zip) (105 MB) |

SHA-256 checksums: [SHA256SUMS-pairwise-2026-09-26.txt](https://dharmamitra.org/pub/dictionaries/SHA256SUMS-pairwise-2026-09-26.txt)

- **Aligned occurrences** counts the aligned word pairs behind a direction; both directions of a language pair share them.
- **Tibetan** headwords can be looked up in Wylie or in Tibetan script, with or without the final tsheg.
- After unzipping, the Sanskrit ↔ Tibetan StarDicts take about 2.8–3 GB each, and the other four 40–170 MB.
- Installation works as described for the lexica above. The macOS zips contain ready-built `.dictionary` bundles, which take 105 MB–1.3 GB once installed.

## Limitations

- All entries are generated automatically and have not been checked by hand. In the pairwise dictionaries, the boundaries of multi-word phrases are not always reliable. Renderings, sense divisions and grammatical labels can be wrong, and rare words are under-represented. Treat them as pointers into the texts, not as authoritative definitions, and check the cited passages.

## License

These dictionaries are released under the [Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

## Acknowledgments

These dictionaries are created by Sebastian Nehrdich and Kurt Keutzer in the context of the [Dharmamitra.org](https://dharmamitra.org) project, with generous support from the Tsadra Foundation.
We are dedicated to making work on Sanskrit, Tibetan, and Buddhist Chinese easier.

## Citation

```bibtex
@inproceedings{nehrdich-2022-sanstib,
    title = "{S}ans{T}ib, a {S}anskrit - {T}ibetan Parallel Corpus and Bilingual Sentence Embedding Model",
    author = "Nehrdich, Sebastian",
    booktitle = "Proceedings of the Thirteenth Language Resources and Evaluation Conference",
    month = jun,
    year = "2022",
    address = "Marseille, France",
    publisher = "European Language Resources Association",
    url = "https://aclanthology.org/2022.lrec-1.724",
    pages = "6728--6734"
}
```

---

<p align="center">
A project of <a href="https://dharmamitra.org">Dharmamitra.org</a>
</p>
