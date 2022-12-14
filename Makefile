# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rrebois <rrebois@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/10 18:16:55 by rrebois           #+#    #+#              #
#    Updated: 2022/11/25 16:44:30 by rrebois          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

HEADER = libft.h

SRCS = ft_isalnum.c ft_memcmp.c ft_strdup.c ft_strnstr.c ft_isalpha.c ft_memcpy.c \
	ft_strrchr.c ft_isascii.c ft_memmove.c ft_strlcat.c ft_atoi.c ft_isdigit.c \
	ft_memset.c  ft_strlcpy.c ft_bzero.c ft_isprint.c ft_strlen.c  ft_tolower.c \
	ft_calloc.c  ft_memchr.c  ft_strchr.c  ft_strncmp.c ft_toupper.c ft_substr.c \
	ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

SRCS_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
	ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
	ft_lstiter.c ft_lstmap.c

OBJS = $(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

%.o: %.c $(HEADER) Makefile
	$(CC) $(FLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

bonus: $(OBJS) $(OBJS_BONUS)
	ar -rcs $(NAME) $(OBJS) $(OBJS_BONUS)

.PHONY: all clean fclean re bonus
