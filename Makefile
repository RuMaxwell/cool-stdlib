COOLDIR = /home/rumaxwell/Documents/cool/stdlib
BINDIR = ${COOLDIR}/bin
LIBDIR = ${COOLDIR}/lib
SRCDIR = ${COOLDIR}/src
PROJFILES = ${SRCDIR}/Std.cl ${SRCDIR}/IOLib.cl ${SRCDIR}/Logic.cl ${SRCDIR}/Math.cl ${SRCDIR}/BOOL.cl ${SRCDIR}/CHAR.cl ${SRCDIR}/INT.cl ${SRCDIR}/OBJECT.cl ${SRCDIR}/STRING.cl ${SRCDIR}/List.cl ${SRCDIR}/Pair.cl ${SRCDIR}/Main.cl
CONCATED = stdlib

default: concat coolc spim

concat: ${PROJFILES}
	${BINDIR}/concat ${PROJFILES} > ${CONCATED}.cl

coolc: ${CONCATED}.cl
	${BINDIR}/coolc ${CONCATED}.cl

spim: ${CONCATED}.s
	${BINDIR}/spim -trap_file ${LIBDIR}/trap.handler -file ${CONCATED}.s

clean:
	rm *.cl *.s

