CFLAGS = -I ./include
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: walk

walk: lab2.cpp ppm.cpp libggfonts.a
	g++ $(CFLAGS) lab2.cpp ppm.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -owalk

clean:
	rm -f walk
	rm -f *.o
	rm -f *.ppm

