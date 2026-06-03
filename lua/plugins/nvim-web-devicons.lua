vim.pack.add { "nvim-tree/nvim-web-devicons" }

require("nvim-web-devicons").setup({
  color_icons = true,
  default = true,
  strict = true,
  variant = "dark",

  override = {
    md = {
      icon = "",
      color = "#91d7e3",
      name = "Markdown"
    },
    zsh = {
      icon = "",
      color = "#b7bdf8",
      cterm_color = "65",
      name = "Zsh"
    },
    lua = {
      icon = "",
      color = "#8aadf4",
      name = "Lua"
    },
  },

  override_by_filename = {
    ["LICENSE"] = {
      icon = "",
      color = "#eed49f",
      name = "License"
    },
    ["go.mod"] = {
      icon = "",
      color = "#c6a0f6",
      name = "GoMod"
    },
    ["go.sum"] = {
      icon = "",
      color = "#8bd5ca",
      name = "GoSum"
    },
    [".gitignore"] = {
      icon = "",
      color = "#f5a97f",
      name = "Gitignore"
    },
  },

  override_by_extension = {
    [""] = {
      icon = "",
      color = "#a6da95",
      name = "NoName"
    },
    ["log"] = {
      icon = "",
      color = "#b7bdf8",
      name = "Log"
    },
    ["go"] = {
      icon = "",
      color = "#8aadf4",
      name = "Go"
    },
    ["txt"] = {
      icon = "",
      color = "#89b4fa",
      name = "Txt"
    },
    ["py"] = {
      icon = "",
      color = "#8aadf4",
      name = "Py"
    },
    ["js"] = {
      icon = "",
      color = "#eed49f",
      name = "Js"
    },
    ["ts"] = {
      icon = "",
      color = "#8aadf4",
      name = "Ts"
    },
    ["tsx"] = {
      icon = "",
      color = "#8aadf4",
      name = "Ts"
    },
    ["png"] = {
      icon = "",
      color = "#b7bdf8",
      name = "Png"
    },
    ["jpg"] = {
      icon = "",
      color = "#a6da95",
      name = "Jpg"
    },
    ["jpeg"] = {
      icon = "",
      color = "#a6da95",
      name = "Jpeg"
    },
    ["webp"] = {
      icon = "",
      color = "#a6da95",
      name = "Webp"
    },
    ["lua"] = {
      icon = "",
      color = "#8aadf4",
      name = "Lua"
    },
    ["nix"] = {
      icon = "",
      color = "#8aadf4",
      name = "Nix"
    },
    ["zip"] = {
      icon = "󰛫",
      color = "#8aadf4",
      name = "Zip"
    },
    ["tar"] = {
      icon = "󰛫",
      color = "#8aadf4",
      name = "Tar"
    },
    ["tar.gz"] = {
      icon = "󰛫",
      color = "#8aadf4",
      name = "Tar"
    },
    ["cpp"] = {
      icon = "",
      color = "#8aadf4",
      name = "Cpp"
    },
    ["c"] = {
      icon = "",
      color = "#8aadf4",
      name = "C"
    },
    ["h"] = {
      icon = "",
      color = "#8aadf4",
      name = "C"
    },
    ["sh"] = {
      icon = "",
      color = "#8087a2",
      name = "Sh"
    },
    ["css"] = {
      icon = "",
      color = "#eed49f",
      name = "Css"
    },
    ["scss"] = {
      icon = "",
      color = "#eed49f",
      name = "Scss"
    },
    ["blend"] = {
      icon = "",
      color = "#eed49f",
      name = "Blender"
    },
    ["html"] = {
      icon = "",
      color = "#f5a97f",
      name = "Html"
    },
    ["mp4"] = {
      icon = "",
      color = "#8aadf4",
      name = "Mp4"
    },
    ["mp3"] = {
      icon = "󰝚",
      color = "#8aadf4",
      name = "Mp3"
    },
    ["pdf"] = {
      icon = "",
      color = "#7dc4e4",
      name = "Pdf"
    },
    ["svg"] = {
      icon = "",
      color = "#ee99a0",
      name = "Svg"
    },
    ["avi"] = {
      icon = "",
      color = "#c6a0f6",
      name = "Avi"
    },
    ["mkv"] = {
      icon = "",
      color = "#b7bdf8",
      name = "Mkv"
    },
    ["gif"] = {
      icon = "",
      color = "#f4dbd6",
      name = "Gif"
    },
    ["wav"] = {
      icon = "",
      color = "#ed8796",
      name = "Wav"
    },
    ["aac"] = {
      icon = "",
      color = "#a6da95",
      name = "Aac"
    },
    ["rar"] = {
      icon = "󰛫",
      color = "#8aadf4",
      name = "Rar"
    },
    ["7z"] = {
      icon = "󰛫",
      color = "#8aadf4",
      name = "7z"
    },
    ["java"] = {
      icon = "",
      color = "#f5a97f",
      name = "Java"
    },
    ["class"] = {
      icon = "",
      color = "#f5a97f",
      name = "Java"
    },
    ["jar"] = {
      icon = "",
      color = "#f5a97f",
      name = "Java"
    },
    ["war"] = {
      icon = "",
      color = "#f5a97f",
      name = "Java"
    },
    ["ear"] = {
      icon = "",
      color = "#f5a97f",
      name = "Java"
    },
    ["qml"] = {
      icon = "",
      color = "#8bd5ca",
      name = "Qml"
    },
    ["conf"] = {
      icon = "",
      color = "#f0c6c6",
      name = "Config"
    },
    ["json"] = {
      icon = "",
      color = "#eed49f",
      name = "Json"
    },
    ["jsonc"] = {
      icon = "",
      color = "#eed49f",
      name = "Json"
    },
    ["xml"] = {
      icon = "󰗀",
      color = "#c6a0f6",
      name = "Xml"
    },
    ["ttf"] = {
      icon = "",
      color = "#8aadf4",
      name = "Ttf"
    },
    ["otf"] = {
      icon = "",
      color = "#b7bdf8",
      name = "Otf"
    },
  },
})
