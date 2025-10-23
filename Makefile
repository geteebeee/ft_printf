# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gorg <gorg@student.hive.fi>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/21 19:01:34 by gorg              #+#    #+#              #
#    Updated: 2024/09/21 19:01:35 by gorg             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME=		libftprintf.a

########

CC=			cc

CFLAGS+=	-Wall -Wextra -Werror

BNS=		.bonus

##########

DIRS=		.

SRC=		ft_printf.c ft_printf_utils.c

SRCS+=		${SRC}

##########

DIRH=		.

HEAD=		ft_printf.h

HEADS=		${HEAD}

#########

OBJS=		${SRCS:.c=.o}

##########


##########

all:		${NAME}
	
${NAME}: 	${OBJS}
			ar -rcs $@ $^

clean:		
			rm -f ${OBJS}


fclean:		clean
			rm -f ${NAME}


re:			fclean all

###########

${DIRS}/%.o: ${DIRS}/%.c ${HEADS} 
			${CC} ${CFLAGS} -I ${DIRH} -c $< -o $@

.PHONY: 	all clean fclean re bonus
