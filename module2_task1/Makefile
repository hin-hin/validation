build: lint ## builds the program awesome-api
	go build

run: ## runs the program and writes to log file awesome-api.log
	./awesome-api >./awesome.log 2>&1 &

stop: ## stops the program 
	kill "$$(pgrep awesome-api)"

clean: ## removes the program and log file
	rm awesome-api awesome.log

test: ## tests if the server is reachable
	curl http://localhost:9999
	curl http://localhost:9999/health

help: ## prints help mesage
	echo 'help: prints help message'
	echo 'build: builds the program awesome-api'
	echo 'clean: removes the program and log file'
	echo 'run: runs the program and writes to log file awesome-api.log'
	echo 'test: tests if the server is reachable'

lint: ## lints the code
	golangci-lint run
