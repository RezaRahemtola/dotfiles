# Enable sourcing env files in a bash/zsh way
#
# Usage: envsource <path/to/env>

function envsource
  exec bash -c "source $argv; exec fish"
end
