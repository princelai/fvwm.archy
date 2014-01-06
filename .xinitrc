#ibus-daemon --xim -d
#fcitx for GTK
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx -r
#exec awesome
exec fvwm
#exec openbox-session
xrdb  ~/.Xresources
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
export LOCALE="en_US.UTF-8"
