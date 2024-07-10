# Swedish Kelly Anki Deck

This repository contains an Anki deck for Swedish vocabulary using the Kelly frequency list database.
The deck is created using the Crowd Anki plugin.

*WIP: This deck has not been reviewed by a human much less a fluent speaker*

## Installation

To use this deck, you need to have the Crowd Anki plugin installed.
Please follow the instructions in the [Crowd Anki plugin readme](https://github.com/Stvad/CrowdAnki) to install it.

Once you have installed the plugin, you can add this repository as via repository or clone it and add it manually.
Note that adding as a repository may make Anki hang for a few minutes while it downloads the audio files (just be patient).

## Importing

Add 'Anteckningar' as a personal notes field when importing.

## Usage

This contains approximately 8000+ of the most frequently used Swedish vocab terms from
the [Kelly](https://spraakbanken.gu.se/en/resources/kelly) database
organized by lemmas (vill, ville, velat, vilja are all one lemma).
There are inflection colors for verb conjugations and noun declensions.
Each word is read by a real human native speakers for almost every card.

It is best to study both "Från Lemma" (passive vocab) and "Till Lemma" (active vocab),
but if you pick one go with "Från Lemma".
Try to look only at the definitions in Swedish if they are there
(not every word can have a definition in Swedish the English will be displayed instead).
English and to some extent examples should be considered as disambiguations (if needed) or otherwise hints.
To add some challenges consider these aspects as necessary for marking the card as correct:
1. (essential) Nouns genus: When reviewing say "en smörgås" and "ett djur" for example
2. (essential) Verb class: Always say the present form of the verb when reviewing (e.g. "läser")
4. (difficult) Inflections of adjectives, verbs, and nouns: try to remember the inflection group (i.e. color)
and look to see if you knew all the different forms a lemma has.
3. (difficult) Pronunciation: In Swedish words like "fyll", "full", and "ful"
are tricky for learners but really do sound and mean very different things,
be picky about pronunciation
6. (advanced) Pitch: This one is challenging, non-essential for speaking,
and not recommended learning via flashcards - listen to native speakers instead

Consider starting at the CEFR level that matches your proficiency.
For example, if you are at a B1 level then start at the A2 deck,
and feel free to suspend cards you know very well (they won't show up again).
An advanced learner may want to work backwards until the deck ceases being useful.

One may [roughly](https://languagelearning.stackexchange.com/questions/3061/what-are-estimates-of-vocabulary-size-for-each-cefr-level)
equate finishing the A1 deck to possessing the vocabulary of an A1 learner.
Finishing the C2 deck would correspond to half the vocabulary of an educated native speaker.

### Notes on word frequency

The Kelly database considers the frequency of specific grammatical forms (neat!).
Note that its corpus may contain some niche sources.
For example, an anecdotally uncommon word is "ed" meaning oath, curse, or isthmus
which appears 26 times per million words according to wordfreq
in all of its inflections.
And yet, Kelly ranks this as the an A1 word ranked the 1323rd most common lemma.
This may indicate an over-representation of religious or educational texts
in comparison to everyday speech.
To address this this, you can build a [filtered deck](https://docs.ankiweb.net/filtered-decks.html)
and searching and tagging with `Frekvens:X.__`.
where `X` can range from 0 (rare) to 7 (abundant) and
in the decimal place is the wildcard `_`
that can be further specified.
Values below 3.00 (once per million words) might be too niche to need to learn
and values above 6.00 (once per 1000 words) are so common
you probably don't need to use Anki to learn them.
It is also possible [sort by](https://docs.ankiweb.net/editing.html#customizing-fields)
the "Frekvens" field.
To queue studying via a sorted field, select all in the desired order,
right-click, then choose 'Cards→Reposition' and leave 'Randomize' unchecked.

An example study flow might be:
0. Continue to do new cards in order from Kelly
1. Suspend all cards in `7.__` (they are too easy)
2. Suspend all notes "Från Lemma" for `6.__`
(easy, and helps with duplicates)
3. Do custom studies at `5.99`, `5.98`, etc.
with the additional param `prop:reps=0` to exclude adding cards you already have done.

If you do the last step every day, you will complete the deck in only two years!
Or do 60 sessions of `5.9_`, `5.8_`, etc. once a month
and finish in 5 years.

Why not sort by wordfreq alone?
Because it only takes into account a single inflection (this could be fixed)
and doesn't concern itself about the grammatical forms or
appearance in textbooks or exams.
There are also many "uncommon" words that can be very helpful
for specific groups of people.
Another example, is the word "statsminister" meaning prime minister.
It has a similar problem to "ed" but would be of needed for anyone
who gets the news in Swedish.
Likewise, "ed" would be nice for anyone attending a religious service in Swedish.

### Other tips

If you have a vocab list you need to study from a Swedish class / textbook or self-made,
tag them in this deck and add them to a custom study (just make sure to remove the tags / change them to flags before contributing).

Add personal notes to the "Anteckningar" section or "Etymologi" if that helps you.

When using the Kelly toplevel deck instead of the A1-C2 decks,
keep in mind that there are some words that Kelly doesn't have freqeuncy info for,
but have been deemed important for an A1 speaker. You can view them with the search "tag:manual" (and perhaps suspend them).

Many cards require you to look at the word class (verb, substantiv (noun), adverb, etc.) to get the right answer!

Remember vocabulary is but a portion of learning a language, so
immerse yourself via
listening, talking, reading, and studying grammar, at least as much or preferably more than studying this deck!

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
2. Disable creating a directory on manual export in the config as well.
3. Export "Svenska::Kelly" via CrowdAnki (only tick media files if you have changed, added, or removed some)
4. Run `clean.sh` before committing. This will keep personal notes away from the commit.

Tack så mycket!

## Attributions

This deck is uses the following resources (in approximate order of usage per Lemma):

1. [Kelly](https://spraakbanken.gu.se/en/resources/kelly)
4. [Saldo](https://spraakbanken.gu.se/resurser/saldo)
5. [Saldo Morphology](https://spraakbanken.gu.se/resurser/saldom)
2. [Folkets Lexikon](https://folkets-lexikon.csc.kth.se/folkets/)
3. [Lexin](http://lexin.nada.kth.se/lexin/)
6. [English](https://en.wiktionary.org/) and [Swedish](https://sv.wiktionary.org/) wiktionary
7. [Forvo](https://forvo.com/)
8. [SAOL and SO](https://svenska.se/)

This repository contains a combination of text and audio
from the above sources which should all be in public domain
or the author believes falls under fair use.

Please report any infrigements.
