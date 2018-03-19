##
## EPITECH PROJECT, 2018
## minilibc
## File description:
## Makefile
##

SRC	=	src/my_strlen.S		\
		src/my_strcmp.S		\
		src/my_memcpy.S		\
		src/my_memset.S		\
		src/my_strchr.S		\
		src/my_strncmp.S	\
		src/my_rindex.S		\
		src/my_strpbrk.S	\
		src/my_strcspn.S	\
		src/my_strcasecmp.S
		##src/my_strstr.S
		
OBJ	=	$(SRC:.S=.o)

LFLAGS	=	-shared -fno-builtin

NAME	=	libasm.so

%.o:%.S
	nasm -f elf64 $<

all: $(NAME)

$(NAME):	$(OBJ)
	ld $(CFLAGS) $(LFLAGS) $(OBJ) -o $(NAME)

clean:
	rm -rf $(OBJ)

fclean:	clean
	rm -rf $(NAME)

re: fclean all
