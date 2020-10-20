CFLAGS=-c -Wall

CC = gcc

all:  
	$(CC) open62541.c -o open62541 $(CFLAGS)
	
clean:
	rm -rf *.o open62541
