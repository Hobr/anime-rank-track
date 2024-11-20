{
  description = "Rust Shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
      rust-overlay,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        overlays = [
          rust-overlay.overlays.default
          (final: prev: { rustToolchain = final.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml; })
        ];
        pkgs = import nixpkgs { inherit overlays system; };
      in
      {
        devShells.default =
          with pkgs;
          mkShell rec {
            nativeBuildInputs = [
              pkg-config
              clang
              openssl
              pre-commit
              (lib.optionals stdenv.isLinux mold)
            ];

            buildInputs = [
              rustToolchain
            ];

            shellHook = ''
              export PATH="$PWD/${CARGO_HOME}/bin:$PATH"
            '';

            CARGO_HOME = builtins.toString ".cargo";
            RUSTUP_HOME = builtins.toString ".rustup";
            RUST_SRC_PATH = "${pkgs.rustToolchain}/lib/rustlib/src/rust/library";
            LD_LIBRARY_PATH = "${lib.makeLibraryPath nativeBuildInputs}:/run/opengl-driver/lib:$LD_LIBRARY_PATH";
          };
      }
    );
}
