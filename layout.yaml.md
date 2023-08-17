---
geometry:
 - paperwidth=5.5in
 - paperheight=8.5in
 - bottom=0.75in
 - top=0.75in

# mainfont: Georgia

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
