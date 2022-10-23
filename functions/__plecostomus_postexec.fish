function __plecostomus_postexec --on-event fish_postexec
  for pattern in $plecostomus_regex_patterns
    if builtin string match -rq -- $pattern $__plecostomus_command
      builtin history delete --case-sensitive --exact -- $__plecostomus_command
      break
    end
  end
  builtin history save
end
