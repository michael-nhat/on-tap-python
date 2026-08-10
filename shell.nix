{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.mkdocs-material
      # MkDocs is included as a dependency of mkdocs-material in nixpkgs
    ]))
  ];
}
