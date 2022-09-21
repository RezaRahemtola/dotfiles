function openrepo --description 'open a given folder in the default IDE'
	$VISUAL (find ~/poc ~/delivery ~/Documents -iname "$argv" -type "d" | head -n 1)
end
