{
  lib,
  rustPlatform,
}:

rustPlatform.buildRustPackage rec {
  pname = "rust-nix-template";
  version = "0.1.0";

  # Point to the source root
  src = ../..;

  # Your cargo dependency lock hash
  cargoHash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";

  meta = with lib; {
    description = "A short description of what your crate does";
    homepage = "https://github.com/Ghost-Nix-Syndicate/rust-nix-template";
    license = with licenses; [
      mit
      asl20
    ]; # Match your Cargo.toml
    maintainers = [ maintainers.Ghost-Nix-Syndicate ];
    platforms = platforms.unix;
  };
}
