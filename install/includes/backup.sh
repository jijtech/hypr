backup_files=(
    ".config/alacritty"
    ".config/dunst"
    ".config/hypr"
    ".config/rofi"
    ".config/waybar"
    ".config/wlogout"
    ".bashrc"
)

echo -e "${GREEN}"
figlet "Backup"
echo -e "${NONE}"
echo "The script can create a backup of you existing configurations in .config and your .bashrc"
if gum confirm "Do you want to create a backup now" ;then

    # Create hypr folder
    if [ ! -d ~/hypr ] ;then
        mkdir ~/hypr
    fi

    # Get current timestamp
    datets=$(date '+%Y%m%d%H%M%S')

    # Create backup folder
    if [ ! -d ~/hypr/archive ] ;then
        mkdir ~/hypr/archive
    fi

    # Create backup folder
    if [ ! -d ~/hypr/backup ] ;then
        mkdir ~/hypr/backup
    else
        mkdir ~/hypr/archive/$datets
        cp -r ~/hypr/backup/. ~/hypr/archive/$datets/
    fi

    for df in "${backup_files[@]}"
    do
        if [ -d ~/$df ] ;then
            echo ":: Backup of $df"
            mkdir -p ~/hypr/backup/$df
            cp -r ~/$df ~/hypr/backup/$df
        fi
        if [ -f ~/$df ] && [ ! -L "${df}" ] ;then
            echo ":: Backup of $df"
            cp ~/$df ~/hypr/backup/$df
        fi
    done
elif [ $? -eq 130 ]; then
    echo ":: Installation canceled"
    exit 130
else
    echo ":: Backup skipped"
fi
