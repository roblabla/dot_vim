Roblabla's vimrc
=================

Those are my sweet neovim configuration scripts, made with lots of love and
google-fu. They provide what I believe to be a sane default working environment,
easily hackable by everybody.

There is a lot of work left to be done for this config, but as it is, I like it
quite a lot.

## Installation

### Neovim

```shell
git clone --recursive https://github.com/roblabla/dot_vim $HOME/.config/nvim
nvim +PackerInstall
```

## Usage

First of all, the leader key is set to the spacebar. This allows the config
to feel consistent under different keyboards (I use a french and an english
keyboard, the ',' key isn't in the same place in both, which feels very weird).

For new vim users: the leader key is a sort of prefix for user-defined
keybindings.

The following keybindings are defined here :

- Normal mode
  - `<Leader>o`: Finds a file using telescope findfiles. Type in the name of
  the file you want to open, and Ctrl-P will attempt finding it.
  - `<Leader>/`: Finds a file using telescope grepfiles. Type in the name of
  the file you want to open, and Ctrl-P will attempt finding it.
  - `<Leader>v`: Open a new split window. Maps very well with the previous
  keybinding ;).

## Hacking

I tried to keep this configuration fairly consistently made. In other words,
instead of your usual billion-line .vimrc file, I try to organize everything
simply. The whole configuration is written in lua, in order to make startup time
a tiny bit faster.

Here's a quick explanation, in the order in which they are loaded:

- `lua/plugin_list.lua`: Contains the Packer configuration that lists all
the plugins used.
- `lua/vim_config.vim`: Contains some sane default vim configuration, along
with some language specific defaults I tend to need.
- `lua/plugin_config.vim`: Plugin configuration, such as colorscheme,
  treesitter configs, etc...
- `config/keybindings.vim`: All my custom keybindings, such as using tab to cycle
  through tabs.

All the original vim key-bindings are left intact, so existing vim powerusers
will feel right at home. Almost all new keybindings should use the <Leader> key.
I try to avoid adding plugins that overwrite existing vim keybindings.
