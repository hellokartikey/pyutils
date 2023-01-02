.DEFAULT_GOAL := generate

generate:
	@echo "Creating build directory..."
	@mkdir -p ./build
	@echo "Building files..."
	cp ./src/lowercase.py ./build/lowercase
	cp ./src/uppercase.py ./build/uppercase
	cp ./src/rot13.py ./build/rot13
	@echo "Setting permissions..."
	chmod +x ./build/lowercase
	chmod +x ./build/uppercase
	chmod +x ./build/rot13

clean:
	@echo "Cleaning up..."
	rm ./build/lowercase
	rm ./build/uppercase
	rm ./build/rot13
	rmdir ./build/

install:
	@echo "Installing..."
	cp ./build/lowercase $${HOME}/.local/bin/lowercase
	cp ./build/uppercase $${HOME}/.local/bin/uppercase
	cp ./build/rot13 $${HOME}/.local/bin/rot13
