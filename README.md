## Requirements

Ths script supports the following distributions:
* Arch Linux (+ Arch Linux based distros e.g., EndeavourOS, Manjaro, ...)
* Fedora Linux
* Nobara Linux
* more to come soon...

## Installation

You can install the Hyprland Starter on real hardware (bare metal) or test it first in a Virtual Machine based on QEMU/KVM with activated 3D acceleration.

Just copy the following command into your terminal and execute.

```
bash <(curl -s https://raw.githubusercontent.com/mylinuxforwork/hyprland-starter/main/setup.sh)
```

> Hyprland does not officially support NVIDIA hardware. But many users have reported a successful installation. Please read: https://wiki.hyprland.org/Nvidia/

## Packages

The script will install the following packages and the corresponding configurations:

- Window Manager: hyprland 
- Status Bar: waybar 
- Launcher: rofi-wayland 
- Browser: Firefox
- Terminal: alacritty 
- Notification Service: dunst 
- File Manager: Ranger
- xdg-desktop-portal-hyprland 
- qt5-wayland 
- qt6-wayland 
- Lock screen: hyprlock

> this is kind of a fork but mostly stripped, cred author:
https://github.com/mylinuxforwork/hyprland-starter
