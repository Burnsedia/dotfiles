
# Dotfiles

Welcome to my dotfiles repository! This repository contains my personal configurations for various development tools and environments. These dotfiles are designed to enhance productivity and provide a customized setup for Linux.

## Features

- **Alacritty** – Configuration for Alacritty, a fast, cross-platform terminal emulator.
- **Polybar** – Configuration for Polybar, a highly customizable status bar for i3 and other window managers.
- **i3/awesomeWM** – Window manager configurations for i3 and AwesomeWM to streamline workflow and window management.
- **LazyGit** – Setup for LazyGit, a simple terminal UI for Git commands.

## Installation

To install these dotfiles, you can clone this repository and copy the configuration files to their respective locations.

```bash
git clone https://github.com/Burnsedia/dotfiles.git
cd dotfiles
```

You can manually copy the files or create symlinks to the appropriate directories. For example:

```bash
ln -s $(pwd)/alacritty/.config/alacritty ~/.config/alacritty
ln -s $(pwd)/nvim/.config/nvim ~/.config/nvim
ln -s $(pwd)/polybar/.config/polybar ~/.config/polybar
ln -s $(pwd)/i3/.config/i3 ~/.config/i3
```

## Usage

Once the dotfiles are in place, you can start using the customized setups immediately by launching the respective tools. Make sure to reload or restart applications (like your window manager or terminal) to apply the changes.

For example, to reload i3:

```bash
i3-msg reload
```

## Technologies Used

- **Alacritty**
- **Neovim**
- **LunarVim**
- **Polybar**
- **i3**
- **AwesomeWM**
- **LazyGit**

## Contributing

Feel free to fork the repository and submit pull requests if you'd like to suggest changes or contribute improvements.

## License

This repository is licensed under the [GPL License](LICENSE).

## Contact

For any questions or suggestions, feel free to reach out via [GitHub](https://github.com/Burnsedia) or by [mail](mail@baileyburnsed.dev).
