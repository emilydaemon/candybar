#!/bin/sh
# candybar configuration

# modules location
. "$HOME/.config/candybar/modules.sh"

# network device, needed for upload and download modules
export netdevice=""

# mail directory, needed for mail module
export maildir=""

# module list. uncomment to enable.
# module list. uncomment to enable.
# re-arrange to change order.
# module name		icon/prefix	suffix
#module_mpc		"MPD: "		" | "
#module_uptime		"Up: "		" | "
#module_ram		"RAM: "		" | "
#module_user		"User: "	" | "
#module_vol		"Vol: "		"% | "
#module_kernel		"Kernel: "	" | "
#module_loadavg		"Load Avg.: "	" | "
#module_weather		"Weather: "	" | "
#module_du		"Disk Usage: "	" | "
#module_ip		"IP: "		" | "
#module_cpu		"CPU: "		" | "
#module_battery		"Battery: "	" | "
#module_todo		"TODO: "	" | "
#module_upload		"Up: "		" | "
#module_download	"Down: "	" | "
#module_mail		"Mail: "	" | "
#module_dfmpeg		"Recording!"	" | "
module_date		"Date: "	""
