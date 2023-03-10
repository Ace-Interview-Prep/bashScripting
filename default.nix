{ mkDerivation, aeson, base, bytestring, lib, matplotlib
, process, shelly, filepath, text, which, time, pkgs
}:
mkDerivation {
  pname = "bashScripting";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base bytestring matplotlib process shelly which
  ];
  #executableSystemDepends = [ pkgs.arcan.ffmpeg ffmpeg ];
  librarySystemDepends = [ pkgs.ffmpeg pkgs.cabal-install which ];
  license = "unknown";
  mainProgram = "bashScripting";
 }
