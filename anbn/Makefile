#
# Makefile for anbn0
# Written by Kazi Ashrafuzzaman
#

YACC    = yacc -d
LEX     = flex
CC      = gcc

TARGET  = anbn0
GEN_SOURCES = y.tab.c lex.yy.c
GEN_HEADERS = y.tab.h

RMFILES = $(TARGET) $(GEN_SOURCES) $(GEN_HEADERS)

# Dependencies and Rules
$(TARGET): y.tab.c lex.yy.c y.tab.h 
	$(CC) -o $(TARGET) $(GEN_SOURCES)

y.tab.c: anbn0.y
	$(YACC) $<

lex.yy.c: anbn0.l
	$(LEX) $<

clean:
	rm -f $(RMFILES)

