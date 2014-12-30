SCRIPT= martinesay.sh
MAN= martinesay.1

BINDIR?= bin
DESTDIR?= /usr/local/

install:
	${INSTALL} ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${.CURDIR}/${SCRIPT} ${DESTDIR}${BINDIR}/martinesay

.include <bsd.prog.mk>
