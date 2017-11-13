nixpkgs: with import nixpkgs {};
stdenv.mkDerivation {
    name = "grunt";
    buildInputs = [
        nodejs
    ];
    src = ./.;
    buildPhase = ''
        export HOME=./
        npm install grunt-cli
    '';
    installPhase = ''
        mkdir -p $out
        mv node_modules $out/
        ln -s $out/node_modules/.bin $out/bin
    '';
}
