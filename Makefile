# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pabad-ap <pabad-ap@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/21 11:34:45 by pabad-ap          #+#    #+#              #
#    Updated: 2023/10/30 00:03:58 by pabad-ap         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Nombre del programa
NAME = libftprintf.a

LIBFT_PATH	= ./libft/
LIBFT_AR	= libft.a

CC 	= gcc
CFLAGS	= -g -Wall -Wextra -Werror 

SOURCES = ft_printf.c ft_char_formater.c ft_str_formater.c ft_int_formater.c \
	  ft_uint_formater.c ft_hex_formater.c ft_upperhex_formater.c ft_pointer_formater.c
LIBFT_SOURCES = $(LIBFT_PATH)ft_putchar_fd.c \
		$(LIBFT_PATH)ft_itoa.c \
		$(LIBFT_PATH)libft.h

OBJS = $(SOURCES:.c=.o)

all: $(NAME)

$(NAME): $(LIBFT_PATH)$(LIBFT_AR) $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(LIBFT_PATH)$(LIBFT_AR): $(LIBFT_SOURCES)
	make -C libft
	cp $(LIBFT_PATH)$(LIBFT_AR) $(NAME)	

%.o: %.c Makefile ft_printf.h 
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	make clean -C libft
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME) $(LIBFT_PATH)/$(LIBFT_AR)
	
re: fclean all

.PHONY: all clean fclean re
