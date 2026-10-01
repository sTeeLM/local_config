export GTK_IM_MODULE_FILE=/opt/local/etc/gtk-3.0/gtk.immodules
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS='@im=xim_rime'

export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8

# 禁用 GTK 无障碍桥接（解决启动变慢和报错） 
export NO_AT_BRIDGE=1 

# 进一步彻底关闭 GTK 的无障碍模块 
export GTK_A11Y=none

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# sync userdb
/opt/local/bin/xim_rime -S -u  "$HOME/.config/xim_rime"

# start xim
/opt/local/bin/xim_rime -v -u "$HOME/.config/xim_rime" > "$HOME/.config/xim_rime/xim_rime.log" 2>&1 &

xrdb -merge ~/.Xdefaults

exec /opt/local/bin/fvwm
# exec /opt/local/bin/emwm -multiscreen
