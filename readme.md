A modern Neovim configuration focused on development with TypeScript, JavaScript, Svelte, Python, and Lua.

## Features

- **Plugin Management**: Uses Lazy.nvim for efficient plugin management
- **LSP Support**: Integrated language server protocol for:
  - TypeScript/JavaScript
  - Svelte
  - GraphQL
  - Lua
  - Python
  - And more through Mason
- **Code Quality Tools**:
  - Linting with nvim-lint (eslint_d, pylint)
  - Formatting capabilities
- **Enhanced UI**:
  - Modern colorscheme
  - Lualine status bar
  - Telescope for fuzzy finding
  - Alpha dashboard
  - Dressing.nvim for better UI components
- **Git Integration**: Gitsigns and Lazygit
- **Productivity**:
  - Auto Session management
  - Todo comments
  - Which-key for keybinding help
  - Treesitter for better syntax highlighting
  - Commenting, auto-pairs, and surrounds

## Key Bindings

### LSP

- `gR` - Show LSP references
- `gD` - Go to declaration
- `gd` - Show LSP definitions
- `gi` - Show LSP implementations
- `gt` - Show LSP type definitions
- `<leader>ca` - See available code actions
- `<leader>rn` - Smart rename
- `<leader>D` - Show buffer diagnostics
- `<leader>d` - Show line diagnostics
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic
- `K` - Show documentation for what is under cursor
- `<leader>rs` - Restart LSP

### Linting

- `<leader>l` - Trigger linting for current file

## Installation

1. Clone this repository to your Neovim configuration directory:

   ```bash
   git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
   ```

2. Start Neovim and the plugins will be automatically installed:
   ```bash
   nvim
   ```

## Structure

The configuration is organized in a modular structure:

- `init.lua` - Entry point
- `lua/kocan/lazy.lua` - Plugin manager setup
- `lua/kocan/core/` - Core Neovim settings
- `lua/kocan/plugins/` - Plugin configurations
- `lua/kocan/plugins/lsp/` - LSP-specific configurations

## Requirements

- Neovim >= 0.8.0
- Git
- A Nerd Font for icons
- Node.js (for TypeScript/JavaScript related tooling)
- Python (for Python related tooling)

## Customization

Feel free to customize the configuration according to your preferences by modifying the files in the `lua/kocan/` directory.
