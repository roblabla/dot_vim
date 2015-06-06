Roblabla's vimrc
=================

Those are my sweet vim configuration scripts, made with lots of love and
google-fu. They provide what I believe to be a sane default working environment,
easily hackable by everybody.

There is a lot of work left to be done for this config, but as it is, I like it
quite a lot.

## Installation

```shell
git clone --recursive https://github.com/roblabla/dot_vim $HOME/.vim
ln -s .vim/vimrc .vimrc
vim +PluginInstall
```

I don't have a gvimrc file because I don't use gvim.

## Usage

First of all, the leader key is set to the spacebar. This allows the config
to feel consistent under different keyboards (I use a french and an english
keyboard, the ',' key isn't in the same place in both, which feels very weird).

For new vim users : the leader key is a sort of prefix for user-defined
keybindings.

The following keybindings are defined here :

- Normal mode
  - `<Leader>o`: Open a new file using the Ctrl-P plugin. Type in the name of
  the file you want to open, and Ctrl-P will attempt finding it.
  - `<Leader>v`: Open a new split window. Maps very well with the previous
  keybinding ;).

## Hacking

I tried to keep this configuration fairly consistently made. In other words,
instead of your usual billion-line .vimrc file, I try to organize everything
simply. Here's a quick explanation, in the order in which they are loaded :

- `config/plugin_list.vim`: Contains the Vundle configuration that lists all
the plugins used.
- `config/vim_config.vim`: Contains some sane default vim configuration, along
with some language specific defaults I tend to need.
- `config/win32.vim`: Only loaded on windows environment. Those are windows
specific hacks I needed to make some plugins and/or fonts work.
- `config/plugin_config.vim`: Plugin configuration, such as colorscheme,
telling vim to quit if only NERDTree buffer is left, etc...
- `config/keybindings.vim`: Every single keybinding made.

If you remove a plugin, it shouldn't cause any errors, as every call should be
behind checks. Similarely, plugins that require certain environment (such as
lua, python, etc...) should have checks before being actually loaded. This
allows my vim config to be loaded in a wide variety of environments.

All the original vim key-bindings are left intact, so existing vim powerusers
will feel right at home. All new keybindings should use the <Leader> key. I
try to avoid adding plugins that overwrite existing vim keybindings.
