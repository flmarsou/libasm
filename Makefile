# Output
LIB		:=	libasm.a
EXE		:=	a.out

# Compilers
CC		:=	cc
AS		:=	nasm
AR		:=	ar

# Flags
CFLAGS	:=	-Wall -Werror -Wextra -g
ASFLAGS	:=	-f elf64
ARFLAGS	:=	rcs

# Sources
ASM_SRC	:=	ft_strlen.asm
C_SRC	:=	ft_strlen_test.c

# Objects
ASM_OBJ	:=	${ASM_SRC:.asm=.o}
C_OBJ	:=	${C_SRC:.c=.o}

# Rules
all		:	${LIB} ${EXE}

${LIB}	:	${ASM_OBJ}
		${AR} ${ARFLAGS} $@ $^

${EXE}	:	${C_OBJ} ${LIB}
		${CC} ${C_OBJ} -L. -lasm -o $@

%.o		:	%.asm
		${AS} ${ASFLAGS} $< -o $@

%.o		:	%.c
		${CC} ${CFLAGS} -c $< -o $@

clean	:
		rm -f ${ASM_OBJ} ${C_OBJ}

fclean	:	clean
		rm -f ${LIB} ${EXE}

re		:	fclean all

.PHONY	:	all clean fclean re
