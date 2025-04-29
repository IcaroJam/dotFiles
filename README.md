# My config files for the stuff I use
Comes with a nerdy rice attempt mixing stuff from a bunch of games. All with a nice coat of material teal paint. 
Currently running on Linux Mint.

## Plymouth
Custom theme made from the silhouette of Mae from Night in the Woods. Go play it.
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

## Everforest
#### A theme to go all around
- GTK Theme: A (wip) mix of the teal variant of [Everforest-GTK-Theme](https://github.com/Fausto-Korpsvart/Everforest-GTK-Theme) and Linux Mint's Mint-Y-Dark.
- Icons: Custom everforest version of [Tela-icon-theme](https://github.com/vinceliuice/Tela-icon-theme).
- Cursors: Custom everforest fork of vimix-cursors, [Vimix Forest Cursors](https://github.com/IcaroJam/Vimix-forest-cursors).
The gtk theme is still unfinished. Gtk theming is HARD. And I'm going through the raw CSS files line by line because I'm a stupid masochist and I've spent way to much time on it already to start anew using SASS.

## Cinnamon
#### Smol tweaks:
- Change the grouped window list applet spacing: `/usr/share/cinnamon/applets/grouped-window-list@cinnamon.org/appGroup.js` line 263.
#### Mintupdate icons:
- Customized to use the logo from Firewatch. Files in `.local/share/icons/hicolor`. I can't for the life of me figure out how to make system tray icons use the colorscheme though.

## Lightdm GTK Greeter
For this one it's just copying `lightdm-gtk-greeter.conf` into `/etc/lightdm/`. Don't forget to change the background image to something you actually have! Also, lightdm doesn't have access to you HOME, so the image you specify should be somewhere like `/usr/share/backgrounds/`.
