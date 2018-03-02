##
## EPITECH PROJECT, 2018
## minilibc
## File description:
## Makefile
##

SRC	=	src/my_strlen.S

OBJ	=	$(SRC:.S=.o)

ASFLAGS	=	-f elf64

NAME	=	libasm.so

%.o:%.S
	$(nasm) -f elf64 $< -o $(NAME)

all: $(NAME)

$(NAME):
	gcc $(CFLAGS) -shared -fpic $(OBJ) -o $(NAME)

clean:

fclean:	clean
	rm -rf $(NAME)

re: fclean all
