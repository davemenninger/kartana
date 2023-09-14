# kartana ![kartana](./assets/Kartana.png)

Kartana is a tool for making pages of RPG content (or any content really).

It turns a directory of Markdown files (`./pages/*.md`) into: a PDF or HTML file.

## Usage

### PDF

To generate a PDF run`make pdf`. You can also simply run `make`, since `pdf` is the default target.

### HTML

To generate an HTML file, run `make html`.

### Help

Running `make help` will show a list of all the included make commands and summaries of each:

```
pdf:                           Generates output.pdf
html:                          Generates output.html
all: pdf html                  Generates both HTML and PDF
clean:                         Deletes generated HTML and PDF files
open:                          opens the PDF with your default viewer using the `open` command
help:                          Shows this help.
```

## Design

* author content in individual Markdown files
* separate presentation and content.
* standard tooling and assets likely to be on a dev system
* build to different page sizes
* build to static HTML

### Inspiration

[Control Panel Layout](http://questingblog.com/control-panel-book-layout-osr/) - Ben Milton:

> More and more books in the OSR have been making layout and information design a priority, in particular the “control panel” format that puts all of the relevant information from a single topic on a single page (or two page spread). It’s a term I first used on my video review of B/X essentials, but it seems to have hit a chord. Visuals often take priority, with flowcharts and diagrams replacing traditional text, in order to facilitate faster absorption of the information. I’ve put a bunch of examples below.
> 
> It got me wondering whether you could make an entire RPG in the form of cardstock handouts, somewhere between A4 and A5 sized. Player wants to play a wizard? Hand him the card with the magic rules and the card with the spell list. Going exploring on hex C12? The DM pulls out the card for that hex and places it behind the screen. Going shopping and need to see what goods are available at a high-end potion shop? Pull out that card and put it in the middle of the table.

[The Palette RPG - Books of Rules, not Rulebooks](https://orbitalcrypt.blogspot.com/2023/08/the-palette-rpg-books-of-rules-not.html) - Orbital Crypt

> I define a Palette RPG as a game that is fundamentally open to choosing when to use (or not use) the rules, as the GM sees fit. A game that relies heavily on GM arbitration, uses fictional positioning to determine the stakes of a situation (rather than more detailed or "hard" mechanics), and doesn't have a "guiding" game structure is the ideal Palette RPG. A Palette RPG should have a solid and complete set of rules, and those rules should act as the baseline for assumptions about doing things in the game; but those rules are not hard, nor fast, and the game will not break down if any of the systems are ignored during play. 
>
> I use the term "Palette" because I liken the idea to an artist's actual, physical palette: you encounter a situation that requires resolution, and you pick what "colors" (rules or subsystems), if any, would be appropriate to "fill in" the situation of the game. 

[The GLOG](https://goblinpunch.blogspot.com/2016/05/the-glog.html) - Arnold K.

> Design Philosophy
>
> 1. Compatibility with old modules. Simple enough to perform conversions on the fly.
> 2. Low Power Level. Each level gives you diminishing returns. The power curve flattens out drastically after 4th level. No supermen.
> 3. Accessible for new players. They should be able to make a character in 10 minutes, then learn the rules as they play.
> 4. Simple. Consolidate ruthlessly. Turn two rolls into one, turn one roll into none. Turn tables into formulas, turn formulas into static numbers.
> 5. Fast to play. Prioritize f lexibility over comprehensiveness, rulings over rules, simplicity over realism.
> 6. Hackable. No dependencies, no power expectations. If a player requests it, a DM should be able to design a custom class in 5 minutes. Player characters are just a few templates bolted onto a common chassis.

[Spell Tome](https://www.dandmadeeasy.com/product-page/dnd-5e-spell-tome-all-classes) - DanDMadeEasy

> The Spell Tome makes it easy to store information on your spells your way:
>
> * Print and bind your Spell Tomes at home
> * Organize your spells by casting class and spell level
> * Options for 1 or 2 spells per page to provide flexibility – save space while still being able to fully describe long spells
> * Easy navigation using internal tabs and spell page references
> * Mark prepared spells
> * Supports multiclass characters!
> * Lets you add spells outside your normal spell list easily – no need to buy a separate set of spell cards!
> * Supports homebrew spells
> * If you want, store every spell!
> * Specific tabs for the 12 core classes and "wrench" (you fill in the class name)

### TODO

* CSS
* citations; links to other CC-BY-SA sources
* letter size
* epub
* link color
* make "install" (print a message about dependencies)

### Stretch

* Github Actions for publishing to Netlify and/or itch.io
* automatically import content from CC licensed sources

## Credits

### Pandoc

* https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/
* https://www.soimort.org/notes/161117/
* https://en.wikibooks.org/wiki/LaTeX/Page_Layout
* https://www.overleaf.com/learn/latex/Headers_and_footers
* https://texdoc.org/serve/geometry.pdf/0
* https://pandoc.org/MANUAL.html

### CC licensed sources

* https://itch.io/jam/forever-open-source-jam
* https://github.com/yochaigal/cairn
* https://github.com/oznogon/cc-srd5

### Fonts

* Alegreya - https://fontlibrary.org/en/font/alegreya [OFL (SIL Open Font License)](http://scripts.sil.org/OFL)

## License

[![](https://i.creativecommons.org/l/by-sa/4.0/80x15.png)]((http://creativecommons.org/licenses/by-sa/4.0/)) This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
