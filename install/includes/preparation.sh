if [ ! -d ~/hypr ] ;then
    mkdir ~/hypr
fi
if [ -d ~/hypr/$version ] ;then
    rm -rf ~/hypr/$version
fi
cp -r config-files ~/hypr/$version
echo ":: Hyprland configuration prepared in ~/hypr/$version"
