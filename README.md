# INTRODUCTION
The following is my ever changing ever expanding neovim configuration.

## PHILOSOPHY
When I first started using neovim, I very quickly got interested in the idea of configurating my code editor.
Fair to say ever since that day I've gotten barely any work done because whenever my config starts to feel a bit too
stable, I then spend a week changing completely everything.

I suppose I do it for the love of the game, but well what can you do?

It's simple really, make it suck less.

The current goal of my configuration is to get out of my way as much as possible, allow as much autonomy as possible
and last but not least be simple enough to where even my monkey brain can comprehend it.

## STRUCTURE
The bulk of the actual configuration is located in `lua/minimal/`. In there you will find multiple 'modules', or so I
like to think of them, which define my options, keybinds and more. There's two modules I wanna touch on more closely.

The first one is the lsp module. For the longest time I've been confused by language servers and how to even
get them working, but since neovim 0.11 came out the builtin lsp support has gotten really good. In this module is a
simple setup for autocompletion, line diagnostics, and a table to enable any language servers. The specific lsp configs
are then located in `lsp/`. No need for nvim-lspconfig, you don't even arguably need Mason but I still use it.

The second is the plugins module. I have a sort of love hate relationship with plugins. I love everything they have to
offer, and then watch my editor crumble before me with the amount of steroids I have willingly injected into it.
I'm not saying plugins are bad, they offer a lot of functionality, and especially for people with less than a fulltime
job amount of hours for configuring neovim. That said, many times I've installed a plugin to realise I don't need the 
majority of what it has to offer for my usecase. Nowadays I try to limit my plugins to what I consider essentials.
This means for the most part getting rid of fancy visuals and simply focusing on my workflow.
