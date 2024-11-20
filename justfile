all: check fmt clippy

check:
  cargo check --all-targets

fmt:
  cargo fmt --all -- --check

clippy:
  cargo clippy --all-targets
