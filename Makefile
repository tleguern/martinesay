PROG= martinesay
SRCS= martinesay.sh

.SUFFIXES: .sh

.sh:
	cp $< $@
	chmod +x $@

martinesay: martinesay.sh
