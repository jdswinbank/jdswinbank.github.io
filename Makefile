DATE := $(shell git log -1 --format=%cd --date=format:'%-d %B %Y')

.PHONY: datestamp
datestamp:
	sed -i 's/{{COMMIT_DATE}}/$(DATE)/g' deploy/*.html
