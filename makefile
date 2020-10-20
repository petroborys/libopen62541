# CFLAGS=-c -Wall -O -fPIC
# 
# CC = gcc
# 
# all:  
# 	$(CC) open62541.c -o open62541 $(CFLAGS)
# 	
# clean:
# 	rm -rf *.o open62541


CC=gcc
CFLAGS= -Wall -g -O -fPIC
RM= rm -f
.PHONY: all clean

all: open62541.so
clean:
	$(RM) *.o *.so

open62541.so: open62541.o
	$(LINK.c) -shared $^ -o $@

open62541.o: open62541.c open62541.h
