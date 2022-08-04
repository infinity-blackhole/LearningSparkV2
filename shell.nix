{ python310
, mkShell
, libkrb5
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
    libkrb5
    nixpkgs-fmt
    pythonEnv
  ];
}
