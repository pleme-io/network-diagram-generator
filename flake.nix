{
  description = "Akeyless network diagram generator for multi-tenant and single-tenant deployments";
  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = { url = "github:pleme-io/substrate";};
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "python";
    builder = "devShell";
    description = "Akeyless network diagram generator for multi-tenant and single-tenant deployments";
  };
}
