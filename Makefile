#compiler
CC=gcc
#compiler options
OPTS=-c -Wall
#source files
SOURCES=$(wildcard *.c )
#object files
OBJECTS=$(SOURCES:.cc=.o)
#LIBS=`sdl-config --cflags --libs`
LIBS=
#executable filename
EXECUTABLE=hello
#Special symbols used:
#$^ - is all the dependencies (in this case =$(OBJECTS) )
#$@ - is the result name (in this case =$(EXECUTABLE) )

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(LINK.o) $^ -o $@ $(LIBS)

clean:
	rm $(EXECUTABLE) $(OBJECTS)
