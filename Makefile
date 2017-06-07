CFLAGS = -I ./include
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: lab2

walk: lab2.cpp ppm.cpp
	g++ $(CFLAGS) lab2.cpp ppm.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -owalk

clean:
	rm -f lab2
	rm -f *.o

