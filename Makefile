CC	  = gcc
CFLAGS	  = -Wall -g
LDFLAGS	  =
OBJFILES  = stack.o main.o
TARGET	  = stack.out

all:  $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

clean:
	rm -f $(OBJFILES) $(TARGET) *~
