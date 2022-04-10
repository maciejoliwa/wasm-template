C = emcc
FLAGS = -std=gnu11 -o wasm/out.js
FILES = wasm/main.c

all:
	$(C) $(FLAGS) $(FILES)

optimize:
	$(C) $(FLAGS) -O3 $(FILES)