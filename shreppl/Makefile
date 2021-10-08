shreppl:  shre.l shre.y
	bison -d shre.y
	flex shre.l
	cc -o $@ shre.tab.c lex.yy.c -lfl
