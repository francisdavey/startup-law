all: pages/*.html
	pandoc source/intro.md -t html5 -o pages/intro.html --template=templates/default.FORMAT
