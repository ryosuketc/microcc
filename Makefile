CFLAGS=-std=c11 -g -static
TARGET_BIN := target/debug/rcc

build: $(TARGET_BIN)
$(TARGET_BIN): src/main.rs Cargo.toml
	cargo build

test: build
		./test.sh

run: build
	cargo run --

clean:
		cargo clean
		rm -f microcc *.o *~ tmp*

.PHONY: test clean build run
