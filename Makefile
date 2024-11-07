# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/07 15:49:08 by aghlimi           #+#    #+#              #
#    Updated: 2024/11/07 17:45:30 by aghlimi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

INCLUDE = inc

SRC_FILES = ft_printf.c fnc/ft_putchar.c\
			fnc/ft_putchr.c\
			fnc/ft_puthex.c\
			fnc/ft_putnbr.c\
			fnc/ft_putptr.c\
			fnc/ft_putstr.c

OBJ_FILES = $(SRC_FILES:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar rcs $(NAME) $(OBJ_FILES)

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ -I$(INCLUDE)

clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 
