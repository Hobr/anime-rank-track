build:
  cargo build --workspace

release:
  cargo build --release

run:
  cargo run

check:
  cargo check

fmt:
  pre-commit run --all-files

install-dev:
  pre-commit install
  cargo install cargo-edit cargo-machete cargo-deny typos-cli cargo-nextest git-cliff --locked
  cargo deny fetch

update:
  cargo upgrade
  cargo update
  pre-commit autoupdate
  nix flake update

machete:
  cargo machete

doc:
  cargo doc --open
