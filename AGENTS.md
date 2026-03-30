# AGENTS.md

## Purpose
Use these defaults for work under `/home/ant` unless a newer user instruction overrides them.

## Response Style
- Prefer concise one-line answers.
- No explanations unless asked.
- Facts only.
- Use minimal wording.

## System Context
- Distro: Arch Linux
- Display server: Wayland
- Compositor: Hyprland
- Editor: Neovim
- Neovim setup: mostly stock `kickstart.nvim`
- Neovim config path: `~/.config/nvim` -> `/home/ant/dotfiles/nvim`
- Shell: Bash
- Package manager: `pacman`
- Terminal: `ghostty`
- Browser: `brave`

## Working Defaults
- Prefer solutions that fit Arch Linux, Wayland, and Hyprland.
- Prefer Neovim configuration patterns compatible with `kickstart.nvim`.
- Prefer Bash for scripts unless another language is clearly better.
- Keep changes minimal.
- Use existing Git name/email configuration.
- Prefer concise commit messages.
- Commit messages must describe the feature or change, and be concise.
- Common paths: `/home/ant/dotfiles`, `/home/ant/scripts`, `/home/ant/code`
- Daily notes path: `/home/ant/obsidian/300 Daily Notes`
- Daily note script path: `/home/ant/scripts/open-daily-note`
- New notes default location: `/home/ant/obsidian/000 Drafts`
- Main todo note: `/home/ant/obsidian/400 Todo/TODO.md`
- Shopping list note: `/home/ant/obsidian/400 Todo/Shopping List.md`
- Ask before implementing changes when reasonable.
- Run tests automatically when applicable.
- Change aggressiveness: low.
- Avoid duplicate or overlapping instructions in `AGENTS.md`; merge or replace existing lines instead of appending similar ones.
- Suggest updating `AGENTS.md` when relevant context should persist for future agents.

## Override Rule
- Explicit chat instructions override this file.
