#!/bin/sh
# candybar modules

module_date() {
	export bar="${bar}${1}$(date +'%a %Y-%m-%d %R')${2}"
}

module_mpc() {
	mpcoutput="$(mpc | grep -v '\[.*\]' | grep -v 'volume:')"
	[ "$mpcoutput" = "" ] || export bar="${bar}${1}${mpcoutput}${2}"
}

module_uptime() {
	export bar="${bar}${1}$(uptime -p | sed 's/up // ; s/ year.*/y/ ; s/ week.*,/w/ ; s/ day.*,/d/ ; s/ hour.*,/h/ ; s/ minute.*/m/')${2}"
}

module_ram() {
	export bar="${bar}${1}$(free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g)${2}"
}

module_user() {
	export bar="${bar}${1}$(whoami)@$(cat /proc/sys/kernel/hostname)${2}"
}

module_alsa() {
	export bar="${bar}${1}$(amixer sget Master | awk -F'[][]' '/Mono:/ { print $2 }')${2}"
}

module_kernel() {
	export bar="${bar}${1}$(sed "s/version // ; s/ (.*//" /proc/version)${2}"
}

module_loadavg() {
	export bar="${bar}${1}$(uptime | sed 's/.*load average: //')${2}"
}

module_weather() {
	export bar="${bar}${1}$(curl -s 'wttr.in/?format=1' | sed 's/.* //')${2}"
}

module_du() {
	export bar="${bar}${1}$(df -T / | awk '{if (NR!=1) {print $6}}')${2}"
}

module_ip() {
	export bar="${bar}${1}$(ip -f inet a | awk '/inet / { print $2 }' | tail -n 1 | sed 's/\/.*//')${2}"
}

module_cpu() {
	# https://github.com/speediegamer/xshbar-plugins/blob/main/cpustatus.plugin
	export bar="${bar}${1}$(top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print 100 - $1"%"}')${2}"
}
