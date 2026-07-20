{
  lib,
  buildGo126Module,
  fetchFromGitHub,
}:
buildGo126Module rec {
  pname = "sheets";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "maaslalani";
    repo = "sheets";
    rev = "v${version}";
    hash = "sha256-xDu+jbWH7ubXC6ImvkRVgPI0OHAaUQ60sELDJN8hY1M=";
  };

  vendorHash = "sha256-X7bfALH9mM15HP6SM60CFIG1rm4Ma6LEh2p7z5LNW64=";

  ldflags = ["-s" "-w"];

  doCheck = false;

  meta = with lib; {
    description = "A terminal spreadsheet editor with vim-like keybindings.";
    homepage = "https://github.com/maaslalani/sheets";
    license = licenses.mit;
    platforms = platforms.unix;
    maintainers = [];
    mainProgram = "sheets";
  };
}
