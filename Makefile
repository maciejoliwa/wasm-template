C = emcc
FLAGS = -std=gnu11 -v --check -o wasm/out.js
FILES = wasm/main.c

all:
	$(C) $(FLAGS) $(FILES)

optimize:
	$(C) $(FLAGS) -O3 $(FILES)

debug:
	$(C) $(FLAGS) -g $(FILES)
	
optimize-debug:
	$(C) $(FLAGS) -g -O3 $(FILES)