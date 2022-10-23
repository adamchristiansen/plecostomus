set -g plecostomus_version 1.0.0

# The default ignore patterns
if not set -qU plecostomus_regex_patterns
  set -U plecostomus_regex_patterns '^ +'
end

# Load the handlers
functions --query __plecostomus_preexec __plecostomus_postexec

function __plecostomus_install --on-event plecostomus_install
  set -g __plecostomus_command ''
end

function __plecostomus_update --on-event plecostomus_update
  # Nothing to do
end

function __plecostomus_uninstall --on-event plecostomus_uninstall
  set -eU plecostomus_regex_patterns
  set -eg __plecostomus_command
  set -eg plecostomus_version
end
