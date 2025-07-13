# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Configuration Overview

This is a LazyVim-based Neovim configuration that extends the base LazyVim setup with custom plugins and configurations. The setup uses lazy.nvim as the plugin manager and follows LazyVim's modular structure.

## Architecture

### Core Structure
- `init.lua` - Entry point that bootstraps lazy.nvim and loads config
- `lua/config/` - Core configuration files (options, keymaps, autocmds)
- `lua/plugins/` - Individual plugin configurations
- `lazyvim.json` - LazyVim extras and version configuration
- `lazy-lock.json` - Plugin version lockfile

### Configuration Flow
1. `init.lua` loads `config.lazy`
2. `lua/config/lazy.lua` bootstraps lazy.nvim and sets up plugin loading
3. LazyVim base plugins are loaded automatically
4. Custom plugins from `lua/plugins/` directory are imported
5. LazyVim extras are loaded based on `lazyvim.json` configuration

## Key Configuration Files

### `lua/config/options.lua`
- Disables clipboard integration (`vim.opt.clipboard = ""`)
- Disables snacks animation (`vim.g.snacks_animate = false`)
- Sets up terminal undercurl support
- Creates `cc` command abbreviation for CodeCompanion

### `lua/config/keymaps.lua`
- `jk` - Escape from insert mode
- `<C-s>` - Save all buffers
- `<leader>go`/`<leader>gx` - Open/close Diffview
- `<leader>fo` - Find projects with Telescope
- `<C-g>` - Accept Codeium suggestion
- Custom movement and clipboard keymaps

## Plugin Categories

### AI/Coding Assistance
- **Codeium** (`codeium.lua`) - AI code completion with `<C-g>` keybind
- **Avante** (`avante.lua`) - AI assistant (currently disabled)
- **CodeCompanion** (`codecompanion.lua`) - AI chat interface (currently disabled)
- **Blink CodeCompanion** integration

### Development Tools
- **Diffview** (`diffview.lua`) - Git diff visualization
- **Gitsigns** (`gitsigns.lua`) - Git integration
- **Harpoon** (`harpoon.lua`) - File navigation
- **Project** (`project.lua`) - Project management
- **Debugprint** (`debugprint.lua`) - Debug printing utility

### UI/Visual
- **Catppuccin** (`colorscheme.lua`) - Main colorscheme with transparent background
- **Telescope** (`telescope.lua`) - Fuzzy finder
- **Symbol Usage** (`symbol-usage.lua`) - LSP symbol information
- **Render Markdown** (`render-markdown.lua`) - Markdown rendering

### Language Support (via LazyVim extras)
- TypeScript/JavaScript with ESLint
- Go, Docker, JSON, YAML, Svelte, Nushell
- Prettier formatting

## Common Development Commands

### Formatting
```bash
# Format Lua files (uses stylua.toml config)
stylua lua/
```

### Plugin Management
```bash
# Update plugins
nvim --headless "+Lazy! sync" +qa

# Check plugin status
nvim -c "Lazy"
```

### Configuration Testing
```bash
# Check for Lua syntax errors
luacheck lua/

# Test configuration loading
nvim --noplugin -u init.lua
```

## Key Customizations

1. **Clipboard Disabled** - System clipboard integration is explicitly disabled
2. **Transparent Background** - Catppuccin theme uses transparent background
3. **AI Integration** - Multiple AI providers configured but most are disabled
4. **Custom Keybinds** - Extensive custom keymapping for productivity
5. **Project-based Workflow** - Strong focus on project management and navigation

## Plugin State Management

Many AI-related plugins (Avante, CodeCompanion) are currently disabled but configured for easy re-enabling. The configuration supports multiple AI providers (OpenAI, Anthropic, Gemini) through environment variables.

## LazyVim Extras Enabled

- Copilot & Copilot Chat
- Harpoon2, Mini Surround, DAP Core
- Language support for Go, TypeScript, Docker, etc.
- ESLint, Prettier formatting
- Treesitter context, Project utils, REST client