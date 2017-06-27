CFLAGS = -I ./include
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: walk

walk: walk.cpp conn.cpp log.cpp
	g++ $(CFLAGS) walk.cpp conn.cpp ppm.cpp log.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -owalk

clean:
	rm -f walk
	rm -f *.o
	rm -f ./*~
	rm -f ./*.swp
