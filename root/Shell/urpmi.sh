function urpmil {
  rpm -ql urpmi | grep /usr/share/man
}

function update {
	urpmi.update -a && sudo urpmi --auto-select
}
