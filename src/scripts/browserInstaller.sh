#!/bin/bash
menu() {
    dialog --clear --backtitle "Browser Selector" \
        --title "Select a browser" \
        --menu "Choose one of the following options:" 15 40 3 \
        1 "Chromium" \
        2 "Brave" \
        3 "Librewolf" \
        2>&1 >/dev/tty
}

# Made the script more verbose, for the end user.

while true; do
    choice=$(menu)
    case $choice in
        1)
            echo "Downloading Chromium..."
	    yay -S chromium --noconfirm
        echo "\n==> Downloaded and Installed Chromium."
	    xdg-settings set default-web-browser chromium.desktop
        echo "\nSetting Default Browser to Chromium: OK"
            ;;
        2)
            echo "Downloading Brave..."
	    yay -S brave-bin --noconfirm
        echo "\n==> Downloaded and Installed Brave."
	    xdg-settings set default-web-browser brave-browser.desktop
        echo "\nSetting Default Browser to Brave: OK"

            ;;
        3)
            echo "Downloading Librewolf..."
	    yay -S librewolf-bin --noconfirm
        echo "\n==> Downloaded and Installed LibreWolf."
	    xdg-settings set default-web-browser librewolf.desktop
        echo "\nSetting Default Browser to LibreWolf: OK"

            ;;
        *)
            echo "Exiting..."
            exit 0
            ;;
    esac
done
