# MTA:SA Skin Panel for Game Mode "Tatics"

This script adds a skin selection panel to the "Tatics" game mode in MTA: San Andreas. Depending on the team the player is on, a different panel will be displayed to choose the appropriate skin.

## Functionality

- **Team 1 (Blue)**: When the player is on Team 1, a panel of skins specific to that team will open, allowing the player to select a skin appropriate to their role.
- **Team 2 (Red)**: When the player is on Team 2, another skin panel will be displayed, with options exclusive to the players on that team.

### How it Works

1. **Team Detection**: The script automatically detects which team the player is on.
2. **Panel Opening**:

- If the player is on **Team 1**, the Team 1 skin panel will open. - If the player is on **Team 2**, the Team 2 skin panel will be displayed.

3. **Skin Selection**: After choosing the skin, it is applied to the player.

### Commands

- **Automatic opening**: The panel opens automatically depending on the team, without the need for manual commands.

## Requirements

- MTA: San Andreas 1.5.7 or higher.
- Game mode "Tactics" must be installed on the server.

## Installation

1. Download the repository or clone the repository using:
```bash
git clone https://github.com/your-username/repo.git
