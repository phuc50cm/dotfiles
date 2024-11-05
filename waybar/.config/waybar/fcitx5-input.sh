status=$(fcitx5-remote)
if [ "$status" -eq 1 ]; then
    echo "EN"
elif [ "$status" -eq 2 ]; then
    echo "VI"
else
    echo "NA"
fi
