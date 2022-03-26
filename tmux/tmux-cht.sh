selected=`cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf`
read -p "enter query: " query

if grep -qs "$selected" ~/.tmux-cht-languages; then
	query=`echo $query | tr ' ' '+'`
	tmux neww bash -c "curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
	tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi

