# on MS win change to
# RM = del /f
RM = rm -f
#batch BASIC interpreter command
BBASIC = pcbasic -qn
#interactive/graphics BASIC interpreter cmd.
BASIC = pcbasic
.PHONY: all fun clean

all: fun

FUN.BAS: BCIBMPC.BAS FUN.BC
	cat BCIBMPC.BAS FUN.BC > FUN.BAS

fun:  FUN.BAS
	$(BASIC) FUN.BAS &

clean:
	$(RM) FUN.BAS output.txt

