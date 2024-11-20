build:
  cargo build --workspace

run:
  cargo run

fmt:
  pre-commit run --all-files

install-dev:
  pre-commit install
  cargo install cargo-edit cargo-machete cargo-deny typos-cli cargo-nextest git-cliff --locked
  cargo deny fetch

machete:
  cargo machete

update:
  cargo upgrade
  cargo update
  pre-commit autoupdate
  nix flake update
