{ stdenv }:
  stdenv.mkDerivation {
    name = "pipewire-scripts";
    src = ./scripts;

    buildPhase = ''
      mkdir -p "$out/bin"
      
      for x in start-loopback; do
        cp "$src/$x.bash" "$out/bin/pw-scripts-$x"
      done
      
      chmod +x "$out/bin"/*
    '';
  }
