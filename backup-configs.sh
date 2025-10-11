#!/bin/bash

# Define backup directory
BACKUP_DIR="$HOME/.backup-config"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of config folders (relative to ~/.config)
configs=(
  "hypr"
  "mpv"
  "kitty"
  "waybar"
  "wofi"
  "mako"
  ".wallpaper"
)

echo "=== Backing up configuration directories ==="
for cfg in "${configs[@]}"; do
  src="$HOME/.config/$cfg"
  if [ -e "$src" ]; then
    echo "Moving $src → $BACKUP_DIR/"
    mv "$src" "$BACKUP_DIR/"
  else
    echo "Skipping $src (not found)"
  fi
done

echo
echo "=== Backing up .bashrc ==="
if [ -e "$HOME/.bashrc" ]; then
  echo "Moving ~/.bashrc → $BACKUP_DIR/"
  mv "$HOME/.bashrc" "$BACKUP_DIR/"
else
  echo "Skipping ~/.bashrc (not found)"
fi

echo
echo "Backup completed successfully!"
