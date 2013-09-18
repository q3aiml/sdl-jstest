.PHONY: all clean

all: sdl-jstest sdl2-jstest sdl-jstest.1

clean:
	rm -f sdl-jstest
	rm -f sdl2-jstest
	rm -f sdl-jstest.1

sdl-jstest: sdl-jstest.c
	$(CC) -o $@ $< -std=c99 -Wall `sdl-config --cflags --libs` -lcurses

sdl2-jstest: sdl-jstest.c
	$(CC) -o $@ $< -std=c99 -Wall `sdl2-config --cflags --libs` -lcurses

sdl-jstest.1: sdl-jstest.xml
	docbook2x-man --to-stdout $< > $@

# EOF #
