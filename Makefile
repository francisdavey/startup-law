# xelatex is needed for producing PDF
# this link is appropriate for my darwin install

XELATEX=/usr/local/texlive/2013basic/bin/universal-darwin/xelatex

# all omits hardcopy to avoid latex problems where it is not installed

REVEALJS=reveal.js

GUIDE_SRCS=$(wildcard guides/*.md)
GUIDE_OBJS=$(GUIDE_SRCS:.md=.html)

all: pages/intro.html slides/intro-slides.html index.html $(GUIDE_OBJS)

index.html: README.md
	pandoc README.md -t html5 -o index.html --template=templates/readme.FORMAT

pages/intro.html: source/intro.md
	pandoc source/intro.md -t html5 -o pages/intro.html --template=templates/default.FORMAT

slides/intro-slides.html: source/intro-slides.md templates/default.reveal.js reveal.js/css/theme/francis.css
	pandoc source/intro-slides.md --self-contained -t revealjs -o slides/intro-slides.html --template=templates/default.reveal.js

guides/%.html : guides/%.md
	pandoc $< -o $@ -t html5 --template=templates/default.FORMAT

# reveal.js simple theme has a really (to my eye) small space
# between headings and text, so I hacked the simple theme a small
# amount.

# this is not the right way to do it.

reveal.js/css/theme/francis.css: themes/francis.css
	cp themes/francis.css $(REVEALJS)/css/theme/francis.css

hardcopy: hardcopy/intro.pdf templates/default.latex

hardcopy/intro.pdf: source/intro.md
	pandoc source/intro.md -o hardcopy/intro.pdf --template=templates/default.latex --latex-engine=$(XELATEX)
