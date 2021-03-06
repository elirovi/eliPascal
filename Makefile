CC=gcc
CCFLAGS=-Wall
LDFLAGS=`sdl-config --cflags --libs`
EXE=eliPascal

all: $(EXE)

%.o: %.c
	$(CC) $(CCFLAGS) -c $< -o $@

$(EXE): pascal.o palette.o
	$(CC) $(LDFLAGS) pascal.o palette.o -o $@ -lSDL -lm

clean:
	rm *.o $(EXE)