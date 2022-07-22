converter: converter.l converter.y
	bison -d converter.y
	flex converter.l
	gcc converter.tab.c lex.yy.c -o converter
