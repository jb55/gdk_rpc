
target/release/libgdk_rpc.a:
	cargo build --release

tests/c-test: tests/test.c target/release/libgdk_rpc.a
	$(CC) $< -L. -I. -ldl -lm -l:target/release/libgdk_rpc.a -lpthread  -l:bld/lib/libwallycore.a -o  $@


clippy: fake
	cargo clippy --all

fmt: fake
	cargo fmt --all -- --check

check-src: fmt clippy

check-all: tests/c-test check-src

check: tests/c-test
	./tests/c-test

.PHONY: fake
