vim.schedule(function()
  vim.pack.add {
    "https://github.com/L3MON4D3/LuaSnip",
    "https://github.com/rafamadriz/friendly-snippets"
  }

  require("luasnip.loaders.from_vscode").lazy_load()

  require("luasnip").setup({
    history = true,
    delete_check_events = "TextChanged",
    region_check_events = "InsertEnter",
  })

  local s = require("luasnip").snippet
  local t = require("luasnip").text_node
  local i = require("luasnip").insert_node

  require("luasnip").add_snippets("nix", {
    s("default", {
      t({ "{ ... }:", "", "{" }),
      t({ "", "  imports = [", "" }),
      t({ "    " }), i(1),
      t({ "", "  ];", "}" }),
    }),
    s("shell", {
      t({ "{ pkgs ? import <nixpkgs> {} }:", "", "pkgs.mkShell {", "  nativeBuildInputs = with pkgs; [", "    " }),
      i(1, ""),
      t({ "", "  ];", "", "  shellHook = ''", "    " }), i(0),
      t({ "", "  '';", "}" })
    }),
    s("derivation", {
      t({ "stdenv.mkDerivation rec {", '  pname = "' }), i(1, "name"),
      t({ '";', '  version = "' }), i(2, "0.1.0"),
      t({ '";', "", "  src = " }), i(3, "./."),
      t({ ";", "", "  nativeBuildInputs = [ " }), i(4),
      t({ " ];", "  buildInputs = [ " }), i(5),
      t({ " ];", "", "  meta = with lib; {", '    description = "' }), i(6, "description"),
      t({ '";', '    homepage = "' }), i(7, "https://example.com"),
      t({ '";', "    license = licenses." }), i(8, "mit"),
      t({ ";", "    maintainers = with maintainers; [ " }), i(0),
      t({ " ];", "  };", "}" })
    }),
    s("flake", {
      t({ "{", "" }),
      t({ '  description = "' }), i(1), t({ '";', "" }),
      t({ "", "" }),
      t({ '  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";', "" }),
      t({ "", "" }),
      t({ "  outputs =", "" }),
      t({ "    {", "" }),
      t({ "      self,", "" }),
      t({ "      nixpkgs,", "" }),
      t({ "      ...", "" }),
      t({ "    }:", "" }),
      t({ "    let", "" }),
      t({ "      supportedSystems = [", "" }),
      t({ '        "x86_64-linux"', "" }),
      t({ '        "aarch64-linux"', "" }),
      t({ '        "x86_64-darwin"', "" }),
      t({ '        "aarch64-darwin"', "" }),
      t({ "      ];", "" }),
      t({ "      forEachSupportedSystem =", "" }),
      t({ "        f:", "" }),
      t({ "        nixpkgs.lib.genAttrs supportedSystems (", "" }),
      t({ "          system:", "" }),
      t({ "          f {", "" }),
      t({ "            pkgs = import nixpkgs { inherit system; };", "" }),
      t({ "          }", "" }),
      t({ "        );", "" }),
      t({ "    in", "" }),
      t({ "    {", "" }),
      t({ "      devShells = forEachSupportedSystem (", "" }),
      t({ "        { pkgs }: {", "" }),
      t({ "          default = pkgs.mkShell {", "" }),
      t({ "            packages = with pkgs; [ " }), i(2), t({ "];", "" }),
      t({ '            shellHook = "' }), i(3), t({ '";', "" }),
      t({ "          };", "" }),
      t({ "        }", "" }),
      t({ "      );", "" }),
      t({ "    };", "" }),
      t({ "}", "" })
    })
  })
end)
