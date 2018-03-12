##
## EPITECH PROJECT, 2018
## minilibc
## File description:
## Makefile
##

SRC	=	src/my_strlen.S	\
		src/my_strchr.S	\
		src/my_memset.S	\
		src/my_memcpy.S

OBJ	=	$(SRC:.S=.o)

ASFLAGS	=	-f elf64

LFLAGS	=	-shared -fno-builtin

NAME	=	libasm.so

%.o:%.S
	nasm -f elf64 $<

all: $(NAME)

$(NAME):	$(OBJ)
	gcc $(CFLAGS) $(LFLAGS) $(OBJ) -o $(NAME)

clean:
	rm -rf $(OBJ)

fclean:	clean
	rm -rf $(NAME)

re: fclean all
