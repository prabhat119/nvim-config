### Neovim + NvChad Configuration

#### Brief
- `:Lazy` : for Plugin Manager, plugin settings => lua/plugins/init.lua
- `:Mason` : for LSP/Formatter/Linter, settings => lua/configs/mason.lua
- `:LspInfo` : for active LSPs, settings => lua/configs/lspconfig.lua
- `:ConformInfo` : Formatter & Linter control, settings => lua/configs/conform.lua
- `:TSInstallInfo` : Treesitter UI, override settings => lua/plugins/init.lua
- `:TSUpdate` : Update language parsers
- UI options => lua/chadrc.lua
- `:checkhealth` : for diagnostics
- `:source %` : for reloading config

---

#### Plugin Manager => Lazy.nvim
Each plugin supports:

- `enabled = false`    
- `opts = {}`
- `config = function() ... end`
- `event`, `cmd`, `ft` (lazy loading control)
    

#### LSP/Formatter/Tool Management => Mason

- Install / uninstall LSP servers    
- Install formatters
- Install linters
- Install debuggers
- Auto-install tools    
- Ensure specific tools exist
- Disable unwanted defaults

    
#### LSP
- Active LSPs    
- Attached buffers
- Root directories
- Capabilities
- Restart LSP (important) => `:LspRestart`
- Stop LSP => `:LspStop`


#### Theme and UI Configuration
`chadrc.lua`
`M.ui = {   theme = "tokyonight", }`


#### Disable plugin
`{   "plugin/name",   enabled = false, }`
### Clean unused plugins
`:Lazy clean`    
- **Everything UI** → `chadrc.lua`
    
- **Never edit core NvChad files**
