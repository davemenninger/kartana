---
geometry:
 - paperwidth=5.5in
 - paperheight=8.5in
 - bottom=0.5in
 - top=0.5in
 - left=0.5in
 - right=0.5in

mainfont: Alegreya-Regular.ttf
mainfontoptions:
- Path=./fonts/alegreya/
- Scale=1.0
- BoldFont=Alegreya-Bold.ttf
- ItalicFont=Alegreya-Italic.ttf
- BoldItalicFont=Alegreya-BoldItalic.ttf

colorlinks: true

subparagraph: true

classoption:
 - twoside

header-includes:
- |
  ```{=latex}
  \usepackage{titlesec}
  \newcommand{\sectionbreak}{\clearpage}
  \usepackage{fancyhdr}
  \pagestyle{fancy}
  \fancyhead{}
  \renewcommand{\headrule}{}
  \fancyfoot[CO,CE]{i'm the footer}
  ```
---
