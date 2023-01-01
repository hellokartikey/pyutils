.DEFAULT_GOAL := generate

generate:
	@echo "Creating build directory..."
	@mkdir -p ./build
	@echo "Building files..."
	cp ./src/lowercase.py ./build/lowercase
	cp ./src/uppercase.py ./build/uppercase
	@echo "Setting permissions..."
	chmod +x ./build/lowercase
	chmod +x ./build/uppercase

clean:
	@echo "Cleaning up..."
	rm ./build/lowercase
	rm ./build/uppercase
	rmdir ./build/

install:
	@echo "Installing..."
	cp ./build/lowercase $${HOME}/.local/bin/lowercase
	cp ./build/uppercase $${HOME}/.local/bin/uppercase
