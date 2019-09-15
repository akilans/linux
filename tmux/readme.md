# Tmux
* tmux new -s kubernetes - Start new session with name
* tmux list-sessions/ls - List sessions
* ctl+b then % - splits screen in vertical
* ctl+b then " - splits screen in horizontal
* ctl+b then d - detach the window, closes the kubernetes session
* tmux attach -t kubernetes - Get back to kubernetes session
* ctl+b then x - kill the current pane
* tmux list-panes - lists all the panes
* tmux kill-session -t kubernetes - kill kubernets session
* ctl+b then $ - rename session
* ctl+b then at the same time ->/<-/ - resize the pane
* ctl+b then arrow keys - move between panes
* ctl+b then & - kill windows
* tmux kill-session -t kubernetes - kill session
* 
