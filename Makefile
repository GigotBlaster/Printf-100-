# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: npetitpi <npetitpi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/30 10:22:19 by npetitpi          #+#    #+#              #
#    Updated: 2022/05/30 10:47:20 by npetitpi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a

FLAGS	= -Wall -Werror -Wextra




OBJS 		= ${SRCS:.c=.o}

CC			= gcc

RM			= rm -f

all: ${NAME}

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

${NAME}:	${OBJS}
	ar rc ${NAME} ${OBJS}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all