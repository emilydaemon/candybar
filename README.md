# candybar
a stupidly simple modular statusbar

[preview](https://i.imgur.com/yVBwCJb.png)

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

