{ python310
, mkShell
, sbt
, nixpkgs-fmt
}:

let
  pythonEnv = python310.withPackages (pypkgs: with pypkgs; [
    pip
    virtualenv
  ]);
in
mkShell {
  buildInputs = [
    sbt
    nixpkgs-fmt
    pythonEnv
  ];
}
