# Telescope args

This is a [telescope](https://github.com/nvim-telescope/telescope.nvim) picker for the argument list.

## Motivation

The argument list can be much smaller than the buffer list, making navigation between frequently used buffers easier.

Drew Neil has a couple of vidoes on using the arglist (not Telescope-specific):

- [Meet the arglist ](http://vimcasts.org/episodes/meet-the-arglist/)
- [Populating the arglist](http://vimcasts.org/episodes/populating-the-arglist/)

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
  {
    "Geraint/telescope-args",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("args")
    end,
  }
}
```

## Usage

```
:Telescope args
```
