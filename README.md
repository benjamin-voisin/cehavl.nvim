# Cehavl.nvim

## Installation

You need to call the setup function, for example with
```lua
require('cehavl').setup({
    default_keymaps = true
})

```
to get the default keybindings (<leader>ch) to cehavl the word under cursor.

## Functions and default mappings

| Function|Action|Default Mapping|
|---------------|---------------|-----------------|
| `:Cehavl`     | Cehavl the word under the cursor | `<leader>ch`|
| `:CehavlAll`  | Cehavl all the occurrences of the word under the cursor, according to the LSP : local variables will be changed at the correct locallity, any code should run as well as before the function. | `<leader>cha`|
