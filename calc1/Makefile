#
# Makefile for calc1
# Written by Kazi Ashrafuzzaman
#

YACC    = yacc -d
LEX     = flex
CC      = gcc

TARGET  = calc1
GEN_SOURCES = y.tab.c lex.yy.c
GEN_HEADERS = y.tab.h

RMFILES = $(TARGET) $(GEN_SOURCES) $(GEN_HEADERS)

# Dependencies and Rules
$(TARGET): y.tab.c lex.yy.c y.tab.h 
	$(CC) -o $(TARGET) $(GEN_SOURCES)

y.tab.c: calc1.y
	$(YACC) $<

lex.yy.c: calc1.l
	$(LEX) $<

clean:
	rm -f $(RMFILES)

