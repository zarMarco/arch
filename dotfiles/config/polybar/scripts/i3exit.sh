#!/bin/sh

MENU="$(rofi -sep "|" -dmenu -i -p 'System' -location 3 -yoffset 32 -xoffset
-10 -width 12 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 -font "Misc
Termsyn 12" <<< " Lock| Logout|Hibernate|Suspend| Reboot| Shutdown")"
            case "$MENU" in
             lock)
                 slimlock
                        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
