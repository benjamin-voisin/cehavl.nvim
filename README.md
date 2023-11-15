# Cehavl.nvim

## Installation

You need to call the setup function, for example with
```lua
require('cehavl').setup({
    default_keymaps = true
})

```
Currently, only default setup is supported.

## Functions and default mappings

| Function|Action|Default Mapping|
|---------------|---------------|-----------------|
| `:Cehavl`     | Cehavl the word under the cursor | `<leader>ch`|
| `:CehavlAll`  | Cehavl all the occurrences of the word under the cursor, according to the LSP : local variables will be changed at the correct locallity, any code should run as well as before the function. | `<leader>cha`|

## TODO

* Possibility to cehavl a whole file, with reversability (:CehavlFile and :ChevalFile functions)
* Possibility to choose keymaps in the setup function.
