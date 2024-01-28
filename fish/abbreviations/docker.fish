# Docker
abbr -a -- dcb 'docker compose build'
abbr -a -- dcd 'docker compose down'
abbr -a -- dcda 'docker compose down --remove-orphans --rmi all -v'
abbr -a -- dcu 'docker compose up -d'
abbr -a -- dps 'docker ps'
abbr -a -- dpsa 'docker ps -a'

function docker_rmv
    string match --quiet 'docker rmv ' -- (commandline -j); or return 1
    echo "volume rm "
end
abbr -a docker_rmv --position anywhere --regex rmv --function docker_rmv
