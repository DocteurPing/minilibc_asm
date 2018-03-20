##
## EPITECH PROJECT, 2018
## criterion
## File description:
## makefile
##

SRC	=	test_strchr.c		\
		test_strcspn.c		\
		test_strstr.c		\
		test_strcasecmp.c

CFLAGS  =       -Wall -Wextra -Winit-self -Wwrite-strings
CFLAGS  +=      -Wcast-align -Wshadow -Wredundant-decls -Wfloat-equal
CFLAGS  +=      -Wundef -Wlogical-op -Winline -Wdouble-promotion
CFLAGS  +=      -Wunreachable-code -coverage -Iinclude -I../include
CFLAGS  +=      -coverage -L../lib -fno-builtin

OBJ	=	$(SRC:.c=.o)

RM      =	rm -f

NAME	=	./myTests

LFLAGS	=	-lcriterion

CC      =	gcc

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME) $(LFLAGS)

clean:
	$(RM) $(addsuffix ~, $(SRC))
	$(RM) $(SRC:.c=.gcno)
	$(RM) $(SRC:.c=.gcda)
	$(RM) $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
