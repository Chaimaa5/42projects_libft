NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_memmove.c ft_strlcpy.c ft_memset.c ft_strlen.c ft_atoi.c \
ft_putchar_fd.c ft_strmapi.c ft_bzero.c ft_putendl_fd.c ft_strncmp.c ft_calloc.c \
ft_putstr_fd.c ft_strrchr.c ft_isalpha.c ft_split.c ft_strtrim.c ft_isascii.c \
 ft_strchr.c ft_substr.c ft_isdigit.c ft_strdup.c ft_tolower.c ft_isalnum.c\
 ft_isprint.c ft_memchr.c ft_striteri.c ft_toupper.c ft_itoa.c ft_memcmp.c ft_strjoin.c \
 ft_memcpy.c ft_strlcat.c ft_putnbr_fd.c ft_strnstr.c ft_strcat.c
SRCB = ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstmap_bonus.c ft_lstsize_bonus.c \
ft_lstadd_front_bonus.c ft_lstiter_bonus.c ft_lstnew_bonus.c ft_lstclear_bonus.c ft_lstlast_bonus.c 
	
OBJS = $(SRCS:.c=.o)
OBJB = $(SRCB:.c=.o)


$(NAME) : $(OBJS)
	ar rc $@ $(OBJS) 
	ranlib $@

all : $(NAME)

clean :
	rm -f ${OBJS}
	rm -f ${OBJO}
fclean : clean
	rm -f libft.a

re : fclean all

bonus : ${OBJB}
	ar rc ${NAME} ${OBJB}
