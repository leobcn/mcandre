BIN=bin/fibber

FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp -o $(BIN)

all: test

test: $(BIN)
	$(BIN)

$(BIN): Fibber.hs
	mkdir -p bin/
	ghc $(FLAGS) Fibber.hs

hlint:
	hlint .

lint: hlint

clean:
	-rm -rf bin/
	-rm *.o
	-rm *.hi
