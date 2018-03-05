##
## EPITECH PROJECT, 2018
## minilibc
## File description:
## Makefile
##

SRC	=	src/my_strlen.S	\
		src/my_strchr.S

OBJ	=	$(SRC:.S=.o)

ASFLAGS	=	-f elf64

NAME	=	libasm.so

%.o:%.S
	nasm -f elf64 $<

all: $(NAME)

$(NAME):	$(OBJ)
	gcc $(CFLAGS) -shared -fpic $(OBJ) -o $(NAME)

clean:

fclean:	clean
	rm -rf $(NAME)

re: fclean all
