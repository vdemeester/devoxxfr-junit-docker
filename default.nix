let
    grunt = import ./nix/grunt.nix <nixpkgs> ;
in
with import <nixpkgs> {}; 
stdenv.mkDerivation {
        name = "markdown";
        #PATH="${grunt}/node_modules/.bin";
        buildInputs = [
            nodejs
            grunt
        ];
}
