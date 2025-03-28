# My config files for the stuff I use!
### Currently running on Linux Mint

## Plymouth
#### Display a splashcreen during bootup and shutdown
For this one you'll have to copy the theme into `/usr/share/plymouth/themes`. Then install it with:
> sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/\[your_theme\]/\[your_theme_main.plymouth\] 100

Then set it as active with:
> sudo update-alternatives --config default.plymouth

And finally reload your intramfs:
> sudo update-initramfs -u

## Cinnamon
#### Smol tweaks:
- Change the grouped window list applet spacing: `/usr/share/cinnamon/applets/grouped-window-list@cinnamon.org/appGroup.js` line 263.
