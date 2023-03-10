<div align="center">

# nvim

This is my **"minimal"** _Neovim config_ that I put pride on.

</div>

## ⚡ Requirements

-   🍺 Get yourself a fresh install of [`neovim`][neovim].

-   🚀 Use a [Nerd Font][nerdfonts] within your terminal.

-   🔍 Install [`fd`][fd] and [`ripgrep`][ripgrep] through your favorite package
    manager.

-   🐙 Setup [`git`][git] if you haven't already.

[neovim]: https://neovim.io
[nerdfonts]: https://www.nerdfonts.com
[fd]: https://github.com/sharkdp/fd
[ripgrep]: https://crates.io/crates/ripgrep
[git]: https://git-scm.com

## 📦 Installation

0.  Take a backup of your (possibly) existing Neovim folders

    ```bash
    # required
    mv ~/.config/nvim ~/.config/nvim-backup

    # optional
    mv ~/.cache/nvim ~/.cache/nvim-backup
    mv ~/.local/share/nvim ~/.local/share/nvim-backup
    mv ~/.local/state/nvim ~/.local/state/nvim-backup
    ```

1.  Clone this repository onto `~/.config/nvim`

    ```bash
    git clone https://github.com/utilyre/nvim.git ~/.config/nvim
    ```

2.  Spin up Neovim in headless mode to install all of the plugins

    ```bash
    nvim --headless +q
    ```

## ☕ Tips

-   Run `:TSInstall all` to install every treesitter parsers available.

-   See [`:help lspconfig-all`][servers] to get an understanding of how you would
    setup a language server protocol.

    ```lua
    -- user/servers.lua

    -- $ rustup component add rust-analyzer
    require("lspconfig").rust_analyzer.setup({
      cmd = { "rustup", "run", "stable", "rust-analyzer" },
    })
    ```

-   See [null-ls builtins][builtins] to figure out how you are expected to
    configure a source.

    ```lua
    -- user/sources.lua

    -- $ cargo install stylua
    require("null-ls").register(require("null-ls").builtins.formatting.stylua)
    ```

-   Set `NVIM_DEV` environment variable to modify where [lazy.nvim][lazy.nvim]
    should look for `dev = true` plugins.

[servers]: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
[builtins]: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
[lazy.nvim]: https://github.com/folke/lazy.nvim
