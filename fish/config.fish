# setup gpg tty
set -gx GPG_TTY (tty)

# eval homebrew
eval (/opt/homebrew/bin/brew shellenv)

# Add local bin to path
fish_add_path $HOME/.local/bin

# Add yarn global bin to path
fish_add_path $HOME/.yarn/bin

# Add OpenJDK to path
fish_add_path /opt/homebrew/opt/openjdk/bin

# Add Rust to path
fish_add_path $HOME/.cargo/bin

# set starship config
set -gx STARSHIP_CONFIG $HOME/.config/starship.toml

# set CHROME_EXECUTABLE to Brave Browser
set -gx CHROME_EXECUTABLE "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"

# start starship prompt
starship init fish | source
