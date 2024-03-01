#______________________________________________________________________________#
############################### Target Names ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Name

PROJECT_NAME = Inception
NAME	= ./$(PROJECT_NAME)

#______________________________________________________________________________#
############################### Compiler #######################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Compiler
CXX = c++

# Compiler Flags
CXXFLAGS = -Wall -Wextra -Werror -std=c++98

#______________________________________________________________________________#
############################### Libraries ######################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

#______________________________________________________________________________#
############################### Print Variables ################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Reset
NC = \033[0m

# Colors
YELLOW = \033[0;33m
GREEN = \033[0;32m
BLUE = \033[0;34m
RED = \033[0;31m
PURPLE = \033[0;35m
CYAN = \033[0;36m
BLACK = \033[0;30
WHITE = \033[0;37m

# Colors
BYELLOW = \033[1;33m
BGREEN = \033[1;32m
BBLUE = \033[1;34m
BRED = \033[1;31m
BPURPLE = \033[1;35m
BCYAN = \033[1;36m
BBLACK = \033[1;30m
BWHITE = \033[1;37m

# One Line Output
OL =\e[1A\r\033[K
CLEAR = \033[2K
#______________________________________________________________________________#
############################### Path Sources ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

SRCS_DIR = ./srcs

#______________________________________________________________________________#
############################### Includes #######################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

INC_DIR = ./inc
INC += -I$(INC_DIR)

#______________________________________________________________________________#
############################### Headers ########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

HEADER += 

vpath %.hpp $(INC_DIR)

#______________________________________________________________________________#
############################### Sources ########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

SRCS +=	

#______________________________________________________________________________#
############################### Attribution ####################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

vpath %.cpp $(SRCS_DIR)

#______________________________________________________________________________#
############################### Objects ########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

OBJS_DIR = ./objs
OBJS = $(patsubst %.cpp, $(OBJS_DIR)/%.o, $(SRCS))
CHK_OBJS = $(patsubst %.cpp, $(OBJS_DIR)/%.o, $(CHK_SRCS))

#______________________________________________________________________________#
############################### Build ##########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

DEPS_DIR = $(OBJS_DIR)/.deps
DEPS = $(SRCS:%.cpp=$(DEPS_DIR)/%.d)
DFLAGS = -MT $@ -MMD -MP

#______________________________________________________________________________#
############################### Progress Bar ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# PROGRESS BAR
NB_OBJ = ${words ${OBJS}}
COUNTER = 1
PROGRESS = 0
DONE = 100
SPACE = 0
FILL = 0
EMPTY = 0

define PROGRESS_BAR
	$(eval PROGRESS=$(shell echo $$(($(COUNTER) * 100 / $(NB_OBJ)))))
	$(eval DONE=$(shell echo $$(($(PROGRESS) * 30 / 100))))
	$(eval SPACE=$(shell echo $$((30 - $(DONE)))))
	$(eval FILL=$(shell printf "%*s" ${DONE} | sed 's/ /◼/g'))
	$(eval EMPTY=$(shell printf "%*s" ${SPACE} | sed 's/ /◼/g'))
	printf "\r${CLEAR}$(BCYAN)Compile : $(GREEN)${FILL}$(RED)${EMPTY} $(BWHITE)%3d%%$(END) $(CYAN)%s.cpp " ${PROGRESS} $1
	$(eval COUNTER=$(shell echo $$(($(COUNTER) + 1))))
endef

#______________________________________________________________________________#
############################### Rules ##########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

#_____Build_____#
all:	$(NAME)
		@echo "--▶ $(BGREEN)all\t$(GREEN)done$(NC)"
		@echo "--------------------------------------------------"

$(NAME):	$(OBJS)
		@$(CXX) $(CXXFLAGS) $^ $(LDFLAGS) $(INC) -o $@
    	#-----Output-----#
		@echo "$(WHITE)\n▶$(BGREEN)$(NAME)\t$(GREEN)Executable created$(NC)"

-include $(DEPS)

$(OBJS):	$(OBJS_DIR)/%.o: %.cpp | dir where
			@$(CXX) $(DFLAGS) $(CXXFLAGS) $(INC) -c $< -o $@
			@mv $(basename $@).d $(DEPS_DIR)/$(notdir $(basename $@)).d && touch $@
    		#-----Output-----#
			@$(call PROGRESS_BAR, $(basename $(notdir $<)))

# Directories
dir: $(OBJS_DIR)

$(OBJS_DIR):
	@mkdir $@
	@mkdir $(DEPS_DIR)

#_____Clean_____#
clean:	where_c
		@rm -rf $(OBJS_DIR)
    	#-----Output-----#
		@echo "▶ $(BYELLOW)clean $(YELLOW)Object files removed from $(PROJECT_NAME)$(NC)"
		@echo "▶ \t$(YELLOW)Dependencies files removed from $(PROJECT_NAME)$(NC)"
		@echo "--▶ $(BYELLOW)clean$(YELLOW) done$(NC)"

fclean:	clean
		@rm -f $(NAME)
    	#-----Output-----#

		@echo "\t$(RED)$(NAME) removed$(NC)"
		@echo "--▶ $(BRED)fclean$(RED) done$(NC)"

# Current Make
where_c:
	@echo "$(BBLACK)>$(PROJECT_NAME)$(NC)"

where:
	@echo "$(BBLACK)>$(PROJECT_NAME)$(NC)"

re:	fclean all

.PHONY: all clean fclean re where where_c dir bonus
