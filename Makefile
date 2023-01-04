.DEFAULT_GOAL := generate

generate:
	@echo "Creating build directory..."
	@mkdir -p ./build
	@echo "Building files..."
	cp ./src/b64encode.py ./build/b64encode
	cp ./src/b64decode.py ./build/b64decode
	cp ./src/lowercase.py ./build/lowercase
	cp ./src/rot13.py ./build/rot13
	cp ./src/uppercase.py ./build/uppercase
	@echo "Setting permissions..."
	chmod +x ./build/b64encode
	chmod +x ./build/b64decode
	chmod +x ./build/lowercase
	chmod +x ./build/rot13
	chmod +x ./build/uppercase

clean:
	@echo "Cleaning up..."
	rm ./build/b64encode
	rm ./build/b64decode
	rm ./build/lowercase
	rm ./build/rot13
	rm ./build/uppercase
	rmdir ./build/

install:
	@echo "Installing..."
	cp ./build/b64encode $${HOME}/.local/bin/b64encode
	cp ./build/b64decode $${HOME}/.local/bin/b64decode
	cp ./build/lowercase $${HOME}/.local/bin/lowercase
	cp ./build/rot13 $${HOME}/.local/bin/rot13
	cp ./build/uppercase $${HOME}/.local/bin/uppercase

uninstall:
	@echo "Uninstalling..."
	rm $${HOME}/.local/bin/b64encode
	rm $${HOME}/.local/bin/b64decode
	rm $${HOME}/.local/bin/lowercase
	rm $${HOME}/.local/bin/rot13
	rm $${HOME}/.local/bin/uppercase
