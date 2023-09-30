# Swedish Kelly Anki Deck

This repository contains an Anki deck for Swedish vocabulary using the Kelly frequency list database. The deck is created using the Crowd Anki plugin.

*WIP: This deck has not been reviewed by a human much less a fluent speaker*

## Installation

To use this deck, you need to have the Crowd Anki plugin installed. Please follow the instructions in the [Crowd Anki plugin readme](https://github.com/Stvad/CrowdAnki) to install it.

Once you have installed the plugin, you can add this repository as a git repository or clone it and add it manually.
Note that adding as a repository may make Anki hang for a few minutes while it downloads the audio files (just be patient).

## Importing

When importing this deck, please make sure to add "Anteckningar" as a personal notes field.

## Usage

This contains approximately 8000+ of the most frequently used Swedish vocab terms from
the [Kelly](https://spraakbanken.gu.se/en/resources/kelly) database.
There are colors for verb and noun inflections, and real human native speakers for almost every card.

One may recommend skipping to whatever CEFR level you are at as the deck starts from very basic words (i.e. och, jag, ett).
For example, if you are at a B1 level then start at the A2 deck,
and feel free to suspend cards you know very well (they won't show up again).

One may [roughly](https://languagelearning.stackexchange.com/questions/3061/what-are-estimates-of-vocabulary-size-for-each-cefr-level)
translate finishing the A1 deck to having the vocabulary of a beginner A1 speaker
and finishing the C2 deck as having half the vocabulary of an educated native speaker.

Remember vocabulary is but a portion of learning a language, so
immerse yourself via
listening, talking, reading, and studying grammar, at least as much or preferably more than studying this deck!

It is best to study both Swedish→English and English→Swedish, but if you pick one go with Swedish→English.
Try to look only at the definitions in Swedish if they are there (not every word can have a definition in Swedish the English will be displayed instead).
English and to some extent examples should be considered as disambiguations (if needed) or otherwise hints.
To add some challenges consider these aspects as neccesary for marking the card as correct (at your target level):
1. (A1) Nouns genus: When reviewing say "en smörgås" and "ett djur" for example
2. (A1) Verb class: Always say the infinitive form or present form (pick one) of the verb when reviewing (e.g. "läs!"/"läser")
4. (A2) Inflections of adjectives, verbs, and nouns: Try to also recall plural nouns, comparative adjectives, or past tenses
3. (B1) Pronunciation: In Swedish words like "fyll", "full", and "ful" are tricky for learners but really do sound/mean very different things, be picky about pronunciation
5. (B2) Examples: Translate or come-up with examples
6. (C2) Pitch: This one is challenging, non-essential for speaking, and not recommended learning via flashcards - listen to native speakers instead

If you have a vocab list you need to study from a Swedish class / textbook or self-made,
tag them in this deck and add them to a custom study (just make sure to remove the tags / change them to flags before contributing).

Add personal notes to the "Anteckningar" section (WIP to display them on the cards).

If you study the Kelly toplevel deck instead of the A1-C2 decks there are some words that Kelly doesn't have freqeuncy info for,
but have been deemed important for an A1 speaker. You can view them with the search "tag:manual".

Many cards require you to look at the word class (verb, noun, etc.) to get the right answer!

Lycka till!

## Warnings

Some verbs mix up the present tense (ends in an -r) instead of the infinitive (ends in an -a) in either the audio or pronunciation guide,
this should be fairly clear to see/hear and is an issue of lacking source material.

Most of the processing was done programatically but there were some bugs, errors in the source material,
and linguistic complications that cannot be programmatically expressed very well.
It was also NOT created by a native speaker NOR did the creater have a background in linguistics.
Expect errors and mistranslations.
Contributers are welcome to make changes to improve HTML, fix errors, improve pedagogy, or add missing fields.

## Contributing

Finding blatant errors and creating issue reports is greatly appreciated.
Please note the word and its kellyID (found in the Metadata field as k####)
and the correction needed - ideally include a reference. If you are more computer savvy please make a pull request.

Please do not add new words unless they are missing and in Kelly.

If you want to contribute to this project, please follow these steps:

0. Make sure you have `bash`, `git` (obviously), and `jq` installed.
1. Set the Crowd Anki config's deck sort method to: "field1, field2, none".
2. You may want to disable creating a directory on manual export in the config as well.
3. Export "Svenska::Kelly" via CrowdAnki (only tick media files if you have changed, added, or removed some)
4. Run `clean.sh` before committing. This will keep your personal notes away from the commit.

Tack så mycket!

## Attributions

This deck is sourced from the following resources (in approximate order of usage per word):
1. [Kelly](https://spraakbanken.gu.se/en/resources/kelly)
4. [Saldo](https://spraakbanken.gu.se/resurser/saldo)
5. [Saldo Morphology](https://spraakbanken.gu.se/resurser/saldom)
2. [Folkets Lexikon](https://folkets-lexikon.csc.kth.se/folkets/)
3. [Lexin](http://lexin.nada.kth.se/lexin/)
6. [English](https://en.wiktionary.org/) and [Swedish](https://sv.wiktionary.org/) wiktionary
7. [Forvo](https://forvo.com/) (via non-profit API)
8. [SAOL and SO](https://svenska.se/)


