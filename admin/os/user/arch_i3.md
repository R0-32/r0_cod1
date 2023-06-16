sudo pacman -S transmission-gtk
sudo pacman -Syu
sudo pacman -S git
sudo pacman -S telegram-desktop

#i3wm #lang #ruu
exec_always "setxkbmap -model pc104 -layout us,ru -variant ,ruu, -option grp:alt_shift_toggle,lv3:ralt_switch"
sudo pacman -S flameshot

#mount #usb #disc
// поставить ntfs
sudo pacman -S ntfs-3g
// подключи и проверь подключился ли диск
lsblk
// создай директорию для размещения данных
sudo mkdir /mnt/r0_es
// примонтировать
sudo mount /dev/sdb1 /mnt/r0_es

#flameshot #shorcut #hotkey #i3wm
bindsym Mod4+Shift+F exec --no-startup-id flameshot gui

#obsidian #pacman
sudo pacman -S obsidian

#time #clock
 timedatectl set-timezone Europe/Kyiv

#virtualbox
sudo pacman -S virtualbox

#linuxlite
создание образа
sudo dd if=linux-lite-6.2-64bit.iso of=/dev/sde1 bs=4M

#формаирование
sudo mkfs.vfat -F 32 -n sde /dev/sde1
даляешь разделы sde1 и  sde2, делаешь из них новый раздел (попутно проверяешь, что доступны все 15 гб), всё делаешь в cfdisk  -z, затем полученный новый раздел sde1 форматируешь в FAT

#irc #emacs
M-x erc

#zoom
cd /tmp
sudo pacman -S base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S zoom

#mysql
sudo pacman -S mysql