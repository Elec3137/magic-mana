let
  inputs = import ./npins;
  pkgs = import inputs.nixpkgs { };
in
pkgs.mkShell {
  packages = with pkgs; [
    bun
    svelte-language-server
  ];
}
