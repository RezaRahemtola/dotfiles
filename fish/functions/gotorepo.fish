function gotorepo --description 'cd into a given folder name'
    cd (find ~/poc ~/delivery ~/Documents -iname "$argv" -type "d" | head -n 1)
end
