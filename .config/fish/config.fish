set -aU fish_user_paths $HOME/.local/bin/functions $HOME/.local/bin $HOME/.npm $HOME/.npm/bin
set -xU okta_api_key 00sQNUxvDLS434DzYOn1Bp0k4qJhIMtJ1h4R3EXwwN
set -xU okta_password Jock5tr@ps0812
set -xU okta_username ryan.orourke@welocalize.com
set -xU sharefile_client_id VJhh8uP3KQD8jl3RCkXEUixCU6HOR0Hy
set -xU sharefile_client_secret 5FCaYDDQjlnQQhHRPWDV6xA5PBHBMRXY5BQHNk1riG5KXJIJ
set -xU github_token e33ea5a9c79145763386f544d20ac139caa7b324
set -xU _JAVA_AWT_WM_NONREPARENTING 1
set -xU sf_subdomain welocalize
set -xU okta_subdomain welocalizeapi
set -xU sf_okta_app_id exk27orv0kpp4JG6u357

thefuck --alias | source
alias i3-config="vim ~/.config/i3/config"
