{ pkgs, ... }:
{
  plugins = {
    lsp.servers.arduino_language_server = {
      enable = true;
      cmd = [
        "arduino-language-server"
        "-cli" "${pkgs.arduino-cli}/bin/arduino-cli"
        "-clangd" "${pkgs.clang-tools}/bin/clangd"
      ];
    };
    treesitter.settings.ensure_installed = [ "arduino" ];
  };
}
