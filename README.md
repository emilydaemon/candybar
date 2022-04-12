# candybar
a stupidly simple modular statusbar

example output:
```
MPD: Studio Pixel - Gravity | Up: 18h 45m | RAM: 1.1G/15G | User: jornmann@cowfield | Vol: 69% | Kernel: Linux 5.17.1-gentoo-r1 | Load Avg.: 0.01, 0.05, 0.01 | Weather: +2°C | Date: Fri 2022-04-08 12:46
```

## usage
**candybar** only outputs the text that should be shown on the bar, which makes it useable on different applications.
### usage with dwm
add the following to your ~/.xinitrc:
```sh
while true; do
	xsetroot -name "$(candybar)"
	sleep 2
done &
```
### usage with tmux
add the following to your ~/.tmux.conf:
```tmux
set -g status-interval 2
set -g status-right-length 100
set -g status-right "#(candybar)"
```
### usage with zsh
add the following to your ~/.zshrc:
```zsh
precmd() {
	psvar[1]="$(candybar)"
}
export CSI=$'\e'"["
export PROMPT="${CSI}s${CSI}1;$((LINES-1))r${CSI}$LINES;1f%S%1v%s${CSI}K${CSI}u${PROMPT}"
```

