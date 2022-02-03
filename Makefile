NAME =	libmlx.a
SRC =	mlx_shaders.c\
		mlx_png.c\
		mlx_xpm.c\
		mlx_int_str_to_wordtab.c\
		mlx_new_window.m\
		mlx_get_screen_size.m\
		mlx_init_loop.m\
		mlx_new_image.m\
		mlx_mouse.m
OBJ1 = $(SRC:%.c=%.o)
OBJ = $(OBJ1:%.m=%.o)
CFLAGS += -O2 -DSTRINGPUTX11 -w

#color things
RED = \033[31m
GREEN = \033[32m
NC = \033[0m

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $?
	ranlib $@

clean:
ifeq (,$(wildcard $(OBJ)))
	@echo "$(GREEN)Objects files $(NAME)$(NC) already removed."
else
	@echo "Remove $(RED)objects files $(NAME)$(NC)"
	@rm -f $(OBJ)
	@echo "$(GREEN)Done.$(NC)"
endif

fclean: clean
ifeq (,$(wildcard $(NAME)))
	@echo "$(GREEN)$(NAME)$(NC) already removed."
else
	@echo "Remove $(RED)$(NAME)$(NC)"
	@rm -f $(NAME)
	@echo "$(GREEN)Done.$(NC)"
endif

re: clean all
