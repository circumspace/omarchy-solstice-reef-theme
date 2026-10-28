# Solstice — Reef

The **authentic Common Desktop Environment "Default" palette** as an Omarchy
theme: teal chrome like reef water, salmon accents like coral, tan window
bodies and a light-slate canvas — the look every CDE workstation shipped
with. Every chrome color is taken slot-exact from CDE's own `Default.dp`
palette file and pixel-verified against the
[LinuxBuild wiki screenshots](https://sourceforge.net/p/cdesktopenv/wiki/LinuxBuild/).

Fourth member of the Solstice family alongside
[Daylight](https://github.com/circumspace/omarchy-solstice-daylight-theme),
[Nightwatch](https://github.com/circumspace/omarchy-solstice-nightwatch-theme)
and [Crimson](https://github.com/circumspace/omarchy-solstice-crimson-theme).

## Preview

![Solstice Reef](screenshots/reef.png)

## Install

```bash
omarchy theme install https://git.circum.space/circumspace/omarchy-solstice-reef-theme
```

Then select **Solstice Reef** from the Omarchy theme picker.

Or manually:

```bash
git clone https://git.circum.space/circumspace/omarchy-solstice-reef-theme \
  ~/.config/omarchy/themes/solstice-reef
```

## Palette

| Role | Hex |
|------|-----|
| Salmon (active border, selection) | `#EDA870` |
| Teal (chrome, menubars, front panel) | `#4992A7` |
| Slate canvas (desktop, terminal) | `#CAD1D9` |
| Tan (window bodies) | `#C6B2A8` |
| Light teal (raised surfaces) | `#ADCED7` |
| Grey (inactive border) | `#999999` |
| Rose (secondary accent) | `#B7878D` |
| Ink (foreground) | `#000000` |

The first six map 1:1 to CDE `Default.dp` slots 1, 6, 5 and the derived
backdrop/input shades. Full 16-color ANSI palette in [`palette.txt`](palette.txt).

## What's themed

- **Hyprland** — bright salmon active border (`#EDA870`) over the CDE slot-2
  grey inactive frame (`#999999`) — vivid warm vs subdued neutral, so focus
  is always obvious.
- **GTK 3 / GTK 4** — teal chrome over tan window bodies, light-slate content,
  salmon selection; sharp CDE corners. GTK loads user CSS once at startup, so
  **restart** GTK apps after switching *into or out of* this theme for colors
  to take.
- **Terminal** — Ghostty / Alacritty / Kitty / foot palettes from `colors.toml`
  on the light-slate canvas; ANSI colors calibrated to ~7:1 (normals) and
  ~9:1 (brights) on the canvas so colored text stays legible.
- **Browser chrome** — `chromium.theme` sets the frame tint; apply with
  `omarchy theme set browser` (the policy write needs sudo). For full
  toolbar/tab colors, enable **Use GTK** in the browser's appearance settings —
  Chromium picks up this theme's GTK CSS.
- **Neovim** — self-contained `neovim.lua` colorscheme (no plugin dependency).
- **btop, Zed/VS Code, Helix** — generated from `colors.toml`.

## Wallpapers

Fourteen procedurally-generated backdrops in `backgrounds/` (6K), rendered at
an 8× tile scale from [NsCDE](https://github.com/NsCDE/NsCDE) XPM patterns,
recolored to the light-slate canvas — the CDE default desktop backdrop under
teal chrome. Regenerate them with
[circumspace/scripts `gen-cde-wallpapers --base canvas`](https://github.com/circumspace/scripts).

## Provenance & credits

- Palette source: [`Default.dp`](https://github.com/cdesktopenv/cde/blob/master/cde/programs/palettes/Default.dp)
  from [cdesktopenv/cde](https://github.com/cdesktopenv/cde).
- Verification screenshots: the
  [CDE LinuxBuild wiki](https://sourceforge.net/p/cdesktopenv/wiki/LinuxBuild/)
  captures (CDE-3 … CDE-8).
- NsCDE: https://github.com/NsCDE/NsCDE

## Related

- **[Solstice Daylight](https://github.com/circumspace/omarchy-solstice-daylight-theme)** — Solaris 9 CDE light variant.
- **[Solstice Nightwatch](https://github.com/circumspace/omarchy-solstice-nightwatch-theme)** — NsCDE dark variant.
- **[Solstice Crimson](https://github.com/circumspace/omarchy-solstice-crimson-theme)** — CDE Crimson4 variant.

## License

MIT — see [LICENSE](LICENSE).
