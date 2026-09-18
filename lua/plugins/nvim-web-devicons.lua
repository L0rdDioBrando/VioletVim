vim.pack.add { "nvim-tree/nvim-web-devicons" }

require("nvim-web-devicons").setup({
  color_icons = true,
  default = true,
  strict = true,
  variant = "dark",

  override = {
    zsh = {
      icon = "",
      color = colors.lavender,
      cterm_color = "65",
      name = "Zsh"
    },
  },

  override_by_filename = {
    ["LICENSE"] = {
      icon = "",
      color = colors.yellow,
      name = "License"
    },
    ["go.mod"] = {
      icon = "",
      color = colors.mauve,
      name = "GoMod"
    },
    ["go.sum"] = {
      icon = "",
      color = colors.teal,
      name = "GoSum"
    },
    [".gitignore"] = {
      icon = "",
      color = colors.peach,
      name = "Gitignore"
    },
    [".gitattributes"] = {
      icon = "",
      color = colors.peach,
      name = "Gitattributes"
    },
    ["flake.lock"] = {
      icon = "󱄅",
      color = colors.teal,
      name = "Flake"
    },
    ["shell.nix"] = {
      icon = "󱄅",
      color = colors.sapphire,
      name = "Flake"
    },
  },

  override_by_extension = {
    ["log"] = {
      icon = "",
      color = colors.lavender,
      name = "Log"
    },
    ["go"] = {
      icon = "",
      color = colors.blue,
      name = "Go"
    },
    ["txt"] = {
      icon = "",
      color = colors.blue,
      name = "Txt"
    },
    ["py"] = {
      icon = "",
      color = colors.blue,
      name = "Py"
    },
    ["js"] = {
      icon = "",
      color = colors.yellow,
      name = "Js"
    },
    ["ts"] = {
      icon = "",
      color = colors.blue,
      name = "Ts"
    },
    ["tsx"] = {
      icon = "",
      color = colors.blue,
      name = "Ts"
    },
    ["png"] = {
      icon = "",
      color = colors.lavender,
      name = "Png"
    },
    ["jpg"] = {
      icon = "",
      color = colors.green,
      name = "Jpg"
    },
    ["jpeg"] = {
      icon = "",
      color = colors.green,
      name = "Jpeg"
    },
    ["webp"] = {
      icon = "",
      color = colors.green,
      name = "Webp"
    },
    ["lua"] = {
      icon = "",
      color = colors.blue,
      name = "DevLua"
    },
    ["nix"] = {
      icon = "",
      color = colors.blue,
      name = "Nix"
    },
    ["zip"] = {
      icon = "󰛫",
      color = colors.blue,
      name = "Zip"
    },
    ["tar"] = {
      icon = "󰛫",
      color = colors.blue,
      name = "Tar"
    },
    ["tar.gz"] = {
      icon = "󰛫",
      color = colors.blue,
      name = "Tar"
    },
    ["cpp"] = {
      icon = "",
      color = colors.blue,
      name = "Cpp"
    },
    ["c"] = {
      icon = "",
      color = colors.blue,
      name = "C"
    },
    ["h"] = {
      icon = "",
      color = colors.blue,
      name = "C"
    },
    ["sh"] = {
      icon = "",
      color = colors.overlay1,
      name = "Sh"
    },
    ["css"] = {
      icon = "",
      color = colors.yellow,
      name = "Css"
    },
    ["scss"] = {
      icon = "",
      color = colors.yellow,
      name = "Scss"
    },
    ["blend"] = {
      icon = "",
      color = colors.yellow,
      name = "Blender"
    },
    ["html"] = {
      icon = "",
      color = colors.peach,
      name = "Html"
    },
    ["mp4"] = {
      icon = "",
      color = colors.blue,
      name = "Mp4"
    },
    ["mp3"] = {
      icon = "󰝚",
      color = colors.blue,
      name = "Mp3"
    },
    ["flac"] = {
      icon = "󰝚",
      color = colors.lavender,
      name = "Flac"
    },
    ["opus"] = {
      icon = "󰝚",
      color = colors.green,
      name = "Opus"
    },
    ["pdf"] = {
      icon = "",
      color = colors.sapphire,
      name = "Pdf"
    },
    ["svg"] = {
      icon = "",
      color = colors.maroon,
      name = "Svg"
    },
    ["avi"] = {
      icon = "",
      color = colors.mauve,
      name = "Avi"
    },
    ["mkv"] = {
      icon = "",
      color = colors.lavender,
      name = "Mkv"
    },
    ["gif"] = {
      icon = "",
      color = colors.rosewater,
      name = "Gif"
    },
    ["wav"] = {
      icon = "",
      color = colors.red,
      name = "Wav"
    },
    ["aac"] = {
      icon = "",
      color = colors.green,
      name = "Aac"
    },
    ["rar"] = {
      icon = "󰛫",
      color = colors.blue,
      name = "Rar"
    },
    ["7z"] = {
      icon = "󰛫",
      color = colors.blue,
      name = "7z"
    },
    ["java"] = {
      icon = "",
      color = colors.peach,
      name = "Java"
    },
    ["class"] = {
      icon = "",
      color = colors.peach,
      name = "Java"
    },
    ["jar"] = {
      icon = "",
      color = colors.peach,
      name = "Java"
    },
    ["war"] = {
      icon = "",
      color = colors.peach,
      name = "Java"
    },
    ["ear"] = {
      icon = "",
      color = colors.peach,
      name = "Java"
    },
    ["qml"] = {
      icon = "",
      color = colors.teal,
      name = "Qml"
    },
    ["conf"] = {
      icon = "",
      color = colors.flamingo,
      name = "Config"
    },
    ["json"] = {
      icon = "",
      color = colors.yellow,
      name = "Json"
    },
    ["jsonc"] = {
      icon = "",
      color = colors.yellow,
      name = "Json"
    },
    ["toml"] = {
      icon = "",
      color = colors.red,
      name = "Toml"
    },
    ["yaml"] = {
      icon = "",
      color = colors.green,
      name = "Yaml"
    },
    ["yml"] = {
      icon = "",
      color = colors.green,
      name = "Yaml"
    },
    ["xml"] = {
      icon = "󰗀",
      color = colors.mauve,
      name = "Xml"
    },
    ["ttf"] = {
      icon = "",
      color = colors.blue,
      name = "Ttf"
    },
    ["otf"] = {
      icon = "",
      color = colors.lavender,
      name = "Otf"
    },
    ["md"] = {
      icon = "",
      color = colors.text,
      name = "Md"
    },
  },
})
