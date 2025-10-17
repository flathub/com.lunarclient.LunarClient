#!/bin/sh

# Flatpak Discord RPC support

for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

# Run lunarclient

exec /app/bin/lunarclient-wrapped "$@"
