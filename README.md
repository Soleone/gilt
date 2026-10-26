# Gilt

A dark theme of cool obsidian, warm parchment, sovereign gold, and restrained jewel tones. For Omarchy, terminals, editors and more, all generated from one palette.

![Gilt desktop screenshot](screenshot.png)

**[Preview it in your browser](https://gilt.soleone.xyz)**: the palette on a mock Omarchy desktop, all seven wallpapers and the unlock screen.

Black stone and charcoal architecture, with parchment and ivory lettering kept clear against the dark. Accented by gold metalwork, with copper, jade, verdigris, lapis, amethyst, and bronze as quieter selective touches.

![Gilt preview](preview.png)

## Install

### Omarchy

```bash
omarchy theme install https://github.com/Soleone/omarchy-gilt-theme.git
```

### Other apps

Every app theme lives in `apps/`, laid out the way the app expects. Clone the repo once, then copy what you use:

```bash
git clone https://github.com/Soleone/gilt.git && cd gilt
```

| App | Install |
| --- | --- |
| Ghostty | `cp apps/ghostty/themes/Gilt ~/.config/ghostty/themes/`, then `theme = Gilt` |
| WezTerm | `cp apps/wezterm/Gilt.toml ~/.config/wezterm/colors/`, then `config.color_scheme = "Gilt"` |
| Helix | `cp apps/helix/themes/gilt.toml ~/.config/helix/themes/`, then `theme = "gilt"` |
| VS Code | `cd apps/vscode && npx @vscode/vsce package && code --install-extension gilt-theme-0.1.0.vsix`, then pick **Gilt** |
| bat | `cp apps/bat/themes/Gilt.tmTheme "$(bat --config-dir)/themes/" && bat cache --build`, then `--theme=Gilt` |
| Starship | merge `apps/starship/gilt-palette.toml` into `~/.config/starship.toml`, or use the full example `apps/starship/starship.toml` |
| Claude Code | `mkdir -p ~/.claude/themes && cp apps/claude-code/gilt.json ~/.claude/themes/`, then pick **Gilt** in `/theme` |
| Pi | `cp apps/pi/gilt.json ~/.pi/agent/themes/`, then choose the `gilt` theme |
| tuios | `cp apps/tuios/gilt.json ~/.config/tuios/themes/` |
| shadcn / tweakcn | `npx shadcn@latest add https://tweakcn.com/r/themes/cmutkrptf000004i93eajenbn`, or open it on [tweakcn](https://tweakcn.com/themes/cmutkrptf000004i93eajenbn) |

**Neovim** loads straight from the repo with any plugin manager, for example lazy.nvim:

```lua
{ "Soleone/gilt", lazy = false, priority = 1000, config = function() vim.cmd.colorscheme("gilt") end }
```

## Palette at a glance

![Gilt theme palette](palette.svg)

| Material | Hex | Role |
| --- | --- | --- |
| Obsidian | `#0D0F12` | Main desktop and application background |
| Deep obsidian | `#050607` | Deepest background and recesses |
| Raised stone | `#181B20` | Raised panels and lighter surfaces |
| Parchment | `#D8D1C0` | Primary text |
| Light parchment | `#E6DECB` | Raised and secondary emphasis, operators |
| Bright ivory | `#F5EBD2` | Cursor, functions, selected text |
| Dusty taupe | `#716957` | Dividers, borders, muted UI |
| Sovereign gold | `#D4AF37` | Focus, borders, active states, types |
| Gold in shadow | `#342D1B` | Selection background and low gold surfaces |
| Oxblood | `#BC6060` | Errors and urgent states |
| Copper | `#C27B48` | Keywords, inline code, and warm contrast |
| Jade | `#7FA37A` | Strings, numbers, and success states |
| Verdigris | `#72A5A4` | Link URLs and cool contrast |
| Lapis | `#6F8FAF` | Variables and navigation |
| Amethyst | `#9A7AA0` | Builtins like `self` and structural emphasis |
| Bronze | `#8A6240` | Supporting earth tone and metal detail |

In code, comments use a slightly lighter muted taupe (`#918977`) so they stay readable. Every app takes its colours from the same roles in [`roles.toml`](roles.toml), so a string is jade in Helix, Neovim, VS Code, bat and Pi alike.

## Wallpapers

The first wallpaper is the default. The six alternatives follow the order in which they were created in the active Gilt setup, from oldest to newest. Every wallpaper is a 3840 × 2160 JPEG and can be cycled with `Super + Ctrl + Space` or `omarchy theme bg next`.

<details>
<summary>Open the wallpaper gallery</summary>

<table>
<tr>
<td><img loading="lazy" width="420" alt="Sovereign Estate wallpaper" src="backgrounds/01-sovereign-estate.jpg"></td>
<td><img loading="lazy" width="420" alt="Oratory 01 wallpaper" src="backgrounds/02-oratory-01.jpg"></td>
</tr>
<tr>
<td><img loading="lazy" width="420" alt="Oratory 02 wallpaper" src="backgrounds/03-oratory-02.jpg"></td>
<td><img loading="lazy" width="420" alt="Oratory 03 wallpaper" src="backgrounds/04-oratory-03.jpg"></td>
</tr>
<tr>
<td><img loading="lazy" width="420" alt="Oratory 04 wallpaper" src="backgrounds/05-oratory-04.jpg"></td>
<td><img loading="lazy" width="420" alt="Oratory 05 wallpaper" src="backgrounds/06-oratory-05.jpg"></td>
</tr>
<tr>
<td><img loading="lazy" width="420" alt="Oratory 06 wallpaper" src="backgrounds/07-oratory-06.jpg"></td>
<td></td>
</tr>
</table>

</details>

| Slot | File | Character |
| --- | --- | --- |
| 01 | [`sovereign-estate`](backgrounds/01-sovereign-estate.jpg) | The primary estate: a moonlit high palace, bridge, lake, and mountain court |
| 02 | [`oratory-01`](backgrounds/02-oratory-01.jpg) | A solitary dark keep above the evening valley |
| 03 | [`oratory-02`](backgrounds/03-oratory-02.jpg) | A quiet reflecting court beside still water |
| 04 | [`oratory-03`](backgrounds/04-oratory-03.jpg) | A pale marble approach in open evening light |
| 05 | [`oratory-04`](backgrounds/05-oratory-04.jpg) | A bright elevated view of the gilded estate |
| 06 | [`oratory-05`](backgrounds/06-oratory-05.jpg) | The red watchtower and bridge at blue hour |
| 07 | [`oratory-06`](backgrounds/07-oratory-06.jpg) | A wide final view of the estate across the lake |

## Unlock screen

Gilt includes a matching unlock screen.

![Gilt unlock screen preview](preview-unlock.png)

## Customize

Double-click your current wallpaper to open the wallpaper selector.

Edit the palette in `colors.toml`, then reapply it:

```bash
omarchy theme refresh
```

To change the other apps, edit `colors.toml` or `roles.toml` and regenerate. The files in `apps/`, `lua/gilt/palette.lua` and the VS Code package are generated, so edit `templates/` rather than those files (JSON and plist formats cannot carry a do-not-edit comment).

```bash
python3 scripts/build.py             # regenerate every app
python3 scripts/build.py --check     # fail if anything is stale
python3 scripts/build.py --contrast  # WCAG contrast of every text role
```

## License

Gilt is released under the [MIT License](LICENSE).
