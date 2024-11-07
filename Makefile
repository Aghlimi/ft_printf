# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/07 15:49:08 by aghlimi           #+#    #+#              #
#    Updated: 2024/11/07 16:03:57 by aghlimi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC_DIR = src
INCLUDE = inc
SRC_FILES = ft_printf.c fnc/ft_putchar.c\
fnc/ft_putchr.c\
fnc/ft_puthex.c\
fnc/ft_putnbr.c\
fnc/ft_putptr.c\
fnc/ft_putstr.c
OBJ_FILES = $(SRC_FILES:%.c=%.o)
LIBFT = libft/libft.a

# Colors (optional, for aesthetics)
GREEN = \033[0;32m
RESET = \033[0m

# Default rule
all: $(NAME)

# Compile libftprintf.a
$(NAME): $(OBJ_FILES)
	ar rcs $(NAME) $(OBJ_FILES)
	@echo "$(GREEN)libftprintf.a created.$(RESET)"

# Create object directory
$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

# Compile source files
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ -I$(INCLUDE)

# Link libft library
$(LIBFT):
	@make -C libft

# Clean object files
clean:
	@rm -rf $(OBJ_FILES)
	@echo "$(GREEN)Object files cleaned.$(RESET)"

# Full clean (objects + library)
fclean: clean
	@rm -f $(NAME)
	@echo "$(GREEN)libftprintf.a removed.$(RESET)"

# Rebuild
re: fclean all



.PHONY: all clean fclean re 
