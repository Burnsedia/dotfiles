# Unified Smart-Rice Dotfiles

This repository contains the configuration for the **Unified Smart-Rice** ecosystem.

## 🚀 Core Philosophy
- **Vim-Ubiquitous**: HJKL movement and Vim-like semantics are integrated into the Window Manager (Hyprland/i3), Terminal (Alacritty), and Editor (Neovim).
- **Darksynthwave Aesthetic**: A unified, high-contrast, Material Design-inspired theme applied across all tools.
- **AI-Driven Workflow**: Deep integration with `llamacpp` for context-aware automation in the terminal and editor.
- **Smart Context Awareness**: Automatic window rules for professional art (Blender) and high-performance gaming.

## 🎨 Theme: Darksynthwave
- **Primary**: `#ff00ff` (Magenta)
- **Secondary**: `#00ffff` (Cyan)
- **Accent**: `#ffcc00` (Amber)
- **Background**: `#000000` (Black)

## 🛠️ Tooling
- **Compositors**: Hyprland (Wayland) & i3 (X11 fallback).
- **Terminal**: Alacritty.
- **Editor**: Neovim (LazyVim base).
- **AI Engine**: `llamacpp` (via `llama-cli`).
- **Status Bar**: Polybar / Waybar.

## ⌨️ Key Workflows
- **AI in Terminal**: `ai 'question'`, `airef` (refactor), `aiexp` (explain), `aisum` (summary).
- **AI in Neovim**: `<leader>ai` (query selection).
- **Vim Binds**: `HJKL` for window and workspace navigation.

## ⚙️ Setup
1. Ensure `llamacpp` is installed in `~/.local/bin/`.
2. Update the model path in `scripts/ai_query.sh`.
3. Symlink these dotfiles to your home directory.
