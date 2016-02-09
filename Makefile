OBJS = main.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)
CXX = -std=c++11

euchre: main.o
	$(CC) $(LFLAGS) $(OBJS) -o euchre.exe $(CXX) 

main.o: main.cpp
	g++ $(CFLAGS) main.cpp

clean:
	\rm *.o *~ euchre
