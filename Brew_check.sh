@if [ -x "$$HOME/homebrew/bin/brew" ] || [ -x "$$HOME/.brew/bin/brew" ]; then \
	echo "$(GREEN)✔︎ $(ITALIC)Brew is already installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
else \
	echo "$(RED)✗ $(ITALIC)Brew not found$(RESET)$(RED) ✗"; \
	read -p "Do you want to install brew? y/n: "  brewchoice; \
	printf "$(RESET)"; \
	if [ "$$brewchoice" = "y" ]; then \
		rm -rf $$HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $$HOME/.brew && \
		echo 'export PATH=$$HOME/.brew/bin:$$PATH' >> $$HOME/.zshrc && source $$HOME/.zshrc && brew update; \
		echo "$(GREEN)✔︎ $(ITALIC)Brew successfully installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
	else \
		echo "Exit"; \
		exit 2; \
	fi \
fi
@if [ -d "$$HOME/homebrew/opt/cmake/bin" ] || [ -d "$$HOME/.brew/opt/cmake/bin" ]; then \
	echo "$(GREEN)✔︎ $(ITALIC)cmake is already installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
else \
	echo "$(RED)✗ $(ITALIC)cmake not found$(RESET)$(RED) ✗"; \
	read -p "Do you want to install cmake? y/n: " cmakechoice; \
	printf "$(RESET)"; \
	if [ "$$cmakechoice" = "y" ]; then \
		brew install cmake; \
		echo "$(GREEN)✔︎ $(ITALIC)cmake successfully installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
	else \
		echo "Exit"; \
		exit 2; \
	fi \
fi
@if [ -d "$$HOME/homebrew/opt/glfw/lib" ] || [ -d "$$HOME/.brew/opt/glfw/lib" ]; then \
	echo "$(GREEN)✔︎ $(ITALIC)glfw is already installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
else \
	echo "$(RED)✗ $(ITALIC)glfw not found$(RESET)$(RED) ✗"; \
	read -p "Do you want to install glfw? y/n: " glfwchoice; \
	printf "$(RESET)"; \
	if [ "$$glfwchoice" = "y" ]; then \
		brew install glfw; \
		echo "$(GREEN)✔︎ $(ITALIC)glfw successfully installed$(RESET)$(GREEN) ✔︎$(RESET)"; \
	else \
		echo "Exit"; \
		exit 2; \
	fi \
fi