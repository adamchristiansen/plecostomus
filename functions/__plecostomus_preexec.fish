function __plecostomus_preexec -e fish_preexec -a command
  set -g __plecostomus_command $command
end
