status=$(playerctl status 2>/dev/null)

if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
    echo "🎜 $(playerctl metadata artist) - $(playerctl metadata title)"
else
    echo "⠀" # blank character to prevent a black line from being displayed
fi
