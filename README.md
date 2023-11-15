# Cehavl.nvim

## Installation

<details>
<summary>
Using <a style="color:blue; text-decoration:underline" href="https://github.com/folke/lazy.nvim" class="bouton1" target="_blank">lazy.nvim</a>
</summary>

You can either add this to `lua/plugin/init.lua`
```lua
{'benjamin-voisin/cehavl',
    opts = {
        default_keymaps = true
    },
}
```

Or this to the file `lua/plugin/cehavl.lua`
```lua
return {
    'benjamin-voisin/cehavl',
    opts = {
        default_keymaps = true
    },
}
```
</details>

<details>
<summary>
Other or no plugin manager
</summary>

Install the plugin to your running path the way you like it. You then need to run the setup function :
```lua
require('cehavl').setup({
    default_keymaps = true
})
```
</details>

</br>
Currently, only default setup is supported.

## Functions and default mappings

| Function|Action|Default Mapping|
|---------------|---------------|-----------------|
| `:Cehavl`     | Cehavl the word under the cursor | `<leader>ch`|
| `:CehavlAll`  | Cehavl all the occurrences of the word under the cursor, according to the LSP : local variables will be changed at the correct locallity, any code should run as well as before the function. | `<leader>cha`|

## TODO

* Possibility to cehavl a whole file, with reversability (:CehavlFile and :ChevalFile functions)
* Possibility to choose keymaps in the setup function.
