.DEFAULT_GOAL := pdf

pdf:
	sed 's/<a name="/{#/g; s/"><\/a>/}/g' guia.md | pandoc -f markdown+autolink_bare_uris -t pdf -V colorlinks -V linkcolor=blue -o mini-guia-anki.pdf
