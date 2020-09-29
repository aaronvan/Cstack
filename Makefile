# for non-GNU environments
SHELL = /bin/zsh

# set the suffix list
.SUFFIXES:
.SUFFIXES: .c .h .o

# set-up the directories and compiler
CC		= gcc
INCLDIR	= include/
BINDIR	= bin/
OBJDIR	= obj/
SRCDIR	= src/

# object files go in $(OBJDIR) with the same base name as .c files
SRC		= $(wildcard $(SRCDIR)*.c)
_OBJS	= $(patsubst $(SRCDIR)%.c, %.o, $(SRC))
OBJS	= $(addprefix $(OBJDIR), $(_OBJS))

# compilation flags
CFLAGS	= -Wall -O2 -g -Iinclude -std=c99 -pedantic

# default goal
.PHONY: all 
	all: $(BIN)
	
# executable
_BIN  = a.out
BIN	  = $(addprefix $(BINDIR), $(_BIN))

#linking
$(BIN): $(OBJS) $(BINDIR) 
	$(CC) $(CFLAGS) $< -o $@
			
$(BINDIR):
	mkdir -p $(BINDIR)

# compiling
$(OBJS): $(SRC) $(OBJDIR) 
	$(CC) $(CFLAGS) -c $< -o $@
	 	
$(OBJDIR):
	mkdir -p $(OBJDIR)

.PHONY: clean
clean:
	@echo "Cleaning things up..."
	rm -rf $(BINDIR) $(OBJDIR)

# debugging tool
print-%:
	@echo $* = $($*)
