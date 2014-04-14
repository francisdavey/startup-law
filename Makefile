all: pages/intro.html slides/intro-slides.html

pages/intro.html: source/intro.md
	pandoc source/intro.md -t html5 -o pages/intro.html --template=templates/default.FORMAT

hardcopy/intro.pdf: source/intro.md
	pandoc source/intro.md -t PDF -o hardcopy/intro.pdf --template=templates/default.latex

slides/intro-slides.html: source/intro-slides.md
	pandoc source/intro-slides.md --self-contained -t revealjs -o slides/intro-slides.html --template=templates/default.reveal.js

