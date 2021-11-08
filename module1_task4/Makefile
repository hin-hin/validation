build: ## Generate the website from the markdown and configuration files in the directory dist/
	hugo -D

clean: ## Cleanup the content of the directory dist/
	rm -rf dist/

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i.bak 's/^title: .*/title: "'"$(POST_TITLE)"'"/' content/posts/$(POST_NAME).md
	rm content/posts/$(POST_NAME).md.bak

help: ## Show this help usage
	@echo 'build: Generate the website from the markdown and configuration files in the directory dist/'
	@echo 'clean: Cleanup the content of the directory dist/'
	@echo 'post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME'
	@echo 'help: Show this help usage'
