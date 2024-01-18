{
  outputs = {
    self,
    nixpkgs,
  }: {
    devShells.aarch64-darwin.default = let
      pkgs = import nixpkgs {system = "aarch64-darwin";};
      inherit (pkgs) mkShell nim1 nimble;
    in
      mkShell {
        name = "starlight";
        packages = [nim1 nimble];
      };
  };
}
