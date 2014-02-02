OBJS = libdc42.o IDEFileToDC42.o
CC = gcc
DEBUG = -g
CFLAGS = -Wall -O0 -W -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)

IDEFileToDC42 : $(OBJS)
	$(CC) $(LFLAGS) $(LIBS) $(OBJS) -o IDEFileToDC42

libdc42.o : libdc42.h machine.h libdc42.c
	$(CC) $(CFLAGS) libdc42.c

IDEFileToDC42.o : libdc42.h IDEFileToDC42.c
	$(CC) $(CFLAGS) IDEFileToDC42.c

clean:
	\rm *.o IDEFileToDC42
