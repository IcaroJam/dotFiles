# My config files for the stuff I use
Comes with a nerdy rice attempt mixing stuff from a bunch of games. All with a nice coat of pastel teal paint.  
Currently running on Linux Mint.

Featuring:
- [Alacritty](#alacritty)
- [Cinnamon tweaks](#cinnamon)
- [Fastfetch](#fastfetch)
- [Fonts](#fonts)
- [Global everforest theme](#everforest)
- [Lightdm](#lightdm-gtk-greeter)
- [Neovim](#neovim)
- [Oh my zsh](#ohmyzsh)
- [Plymouth](#plymouth)

## Alacritty
Very lightly configured to use the mononoki font and start maximized. No transparency in order to preserve battery life. Lots of themes included, courtesy of [alacritty's official theme repo](https://github.com/alacritty/alacritty-theme). The everforest one has been edited to use the hard contrast background color.

## Cinnamon
#### Smol tweaks:
- Change the grouped window list applet spacing: `/usr/share/cinnamon/applets/grouped-window-list@cinnamon.org/appGroup.js` line 263.
#### Mintupdate icons:
- Customized to use the logo from [Firewatch](https://store.steampowered.com/app/383870/Firewatch/). Files in `.local/share/icons/hicolor`. I can't for the life of me figure out how to make system tray icons use the colorscheme in warning, success and such modes though.

## Fastfetch
A custom theme (which requires a nerdfont) and a bunch of ascii art. Currently configured to use a portrait of bestboy Kim Kitsuragi.

## Fonts
Some fonts I personally like and use. Namely the Averia family (which I discovered thanks to [Troika!](https://www.troikarpg.com/)), FacultyGlyphic and Mononoki as the monospaced one. The nerdfont-patched version of mononoki has been tweaked to fix rendering issues I was having with alacritty.

## Everforest
#### A theme to go all around
- GTK Theme: A (wip) mix of the teal variant of Everforest-GTK-Theme and Linux Mint's Mint-Y-Dark, [Mintyforest-GTK-Theme](https://github.com/IcaroJam/Mintyforest-GTK-Theme).
- Icons: Custom everforest version of [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme). No repo fo this one, it's manually included in the icons folder.
- Cursors: Custom everforest fork of vimix-cursors, [Vimix Forest Cursors](https://github.com/IcaroJam/Vimix-forest-cursors).

## Lightdm GTK Greeter
For this one it's just copying `lightdm-gtk-greeter.conf` into `/etc/lightdm/`. Don't forget to change the background image to something you actually have! Also, lightdm doesn't have access to you HOME, so the image you specify should be somewhere like `/usr/share/backgrounds/`.

## Neovim
Does this sound familiar to you? "Oh dude you have to give vim a try, it'll take a while at first but you'll be SO much mor productive once you get used to it". Yeah, well, that's a trap. I've wasted too much time trying to setup stuff I don't really use that much.

Currently WIP [Vscode neovim](https://github.com/vscode-neovim/vscode-neovim) integration.

The terminal setup includes:
- Config:
    - Everforest hard theme
    - `Space` as the LEADER key
- Mappings:
    - Normal and Insert mode word navigation with `Control+arrow` (never got used to hjkl)
    - Word deletion with `Control+Delete` and `Control+Backspace`
    - Change windows with `LEADER+w`
    - Cycle tabs in Normal mode with `Tab` and `Shift+Tab`
    - Quickly remove search highlighting with `LEADER+n`
    - Delete into the void register in various modes with `LEADER+d`
    - Copy/Paste to/from system clipboard with `LEADER+y` and `LEADER+p`
    - Quickly replace the word under the cursor in Normal mode with `LEADER+s`
- Plugins:
    - Using [Paq](https://github.com/savq/paq-nvim) as package manager
    - Toggle NvimTree with `LEADER+t`
    - Telescope find file by name with `LEADER+f`
    - Telescope find by content with `LEADER+g`
    - Open NerdTree help (while inside it) with `g?`
    - NerdCommenter block comment in Visual mode with `LEADER+c+s` and `LEADER+c+u` to uncomment
    - CoC go-to in Normal mode:
        - definition `gd`
        - type `gy`
        - implementation `gi`
        - references `gr`
        - Cycle completion list with `Tab` and `Shift+Tab`
    - NvimSurround:
        - Add surround with `ys{motion}{char}`
        - Delete surround with `ds{char}`
        - Change surround with `cs{target}{replace}`
        - Act over HTML tags with `t`
        - Act over function tags with `f`
        - Opening chars will surround with spaces. E.g.: `ysiw(` results in `( example )` while `ysiw)` results in `(example)`
    - NerdCommenter: Toggle comment with `LEADER+c`


## Ohmyzsh
A custom theme I made some years ago from one of the default ones, can't remember which one. There's two versions, the general (senaris) with hardcoded colors and the rice-oriented one (mentaris) which uses the bases terminal colors.

## Plymouth
Custom theme made from the silhouette of Mae from Night in the Woods. Great game, go play it.
#### Display a splashcreen during bootup and shutdown
For this one you'll have to copy the theme into `/usr/share/plymouth/themes`. Then install it with:
```
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/\[your_theme\]/\[your_theme_main.plymouth\] 100
```

Then set it as active with:
```
sudo update-alternatives --config default.plymouth
```

And finally reload your intramfs:
```
sudo update-initramfs -u
```
