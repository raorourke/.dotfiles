if test -n "$PYTHONPATH"
	set -xU PYTHONPATH /usr/lib64 /usr/local/lib /usr/lib $HOME/.tmp
else
	set -xU PYTHONPATH $PYTHONPATH /usr/lib64 /usr/local/lib /usr/lib $HOME/.tmp
end
if test -n "$LD_LIBRARY_PATH"
	set -xU LD_LIBRARY_PATH /usr/local/lib /usr/lib /usr/lib64 $HOME/.tmp wxpython_8bb0f267f0f049d886027ae7d42aafbc/build/wxbld/gtk3/lib
else
	set -uX LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib /usr/lib /usr/lib64 $HOME/.tmp wxpython_8bb0f267f0f049d886027ae7d42aafbc/build/wxbld/gtk3/lib
end
set -xg LD_LIBRARY_PATH ( printf '%s\n' $LD_LIBRARY_PATH | paste -sd: )
# if test -n "$LIBRARY_PATH"
# 	set -xU LIBRARY_PATH $LD_LIBRARY_PATH
# else
# 	set -xU LIBRARY_PATH $LIBRARY_PATH $LD_LIBRARY_PATH
# end
# set -xg LIBRARY_PATH ( printf '%s\n' $LIBRARY_PATH | paste -sd: )
set -xU PYENV_ROOT $HOME/.pyenv
set -xU fish_user_paths $HOME/.local/bin/functions $HOME/.local/bin $HOME/.npm $HOME/.npm/bin $PYENV_ROOT/bin
set -xU TMPDIR $HOME/.tmp
set -xU okta_api_key 00sQNUxvDLS434DzYOn1Bp0k4qJhIMtJ1h4R3EXwwN
set -xU okta_password Raor0812
set -xU okta_username ryan.orourke@welocalize.com
set -xU sharefile_client_id VJhh8uP3KQD8jl3RCkXEUixCU6HOR0Hy
set -xU sharefile_client_secret 5FCaYDDQjlnQQhHRPWDV6xA5PBHBMRXY5BQHNk1riG5KXJIJ
set -xU github_token e33ea5a9c79145763386f544d20ac139caa7b324
set -xU _JAVA_AWT_WM_NONREPARENTING 1
set -xU sf_subdomain welocalize
set -xU okta_subdomain welocalizeapi
set -xU sf_okta_app_id exk27orv0kpp4JG6u357
set -xU junction_api_key auV2zzo8A83IorPxPYrag6wNMAgwEX1S9bWe5ChM
set -xU junction_auth eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImN0eSI6IkpXVCIsImprdSI6IiIsImtpZCI6IiJ9.eyJwYW50aGVvbkF1dGhUeXBlIjoidXNlciIsIm9rdGFJZCI6InJ5YW4ub3JvdXJrZUB3ZWxvY2FsaXplLmNvbSIsInByaW5jaXBhbCI6NDEzMCwiaW50ZXJuYWwiOnRydWUsInJvbGVzIjpbInZlbmRvci1hZG1pbiIsInZlbmRvci1tYW5hZ2VyIiwicG0iLCJhZG1pbiIsInVzZXItYWRtaW4iLCJjbGllbnQtYWRtaW4iXSwidmVuZG9yUm9sZXMiOlsidmVuZG9yLWFkbWluIiwidmVuZG9yLW1hbmFnZXIiXSwicHJvZ3JhbVJvbGVzIjpbInBtIiwiYWRtaW4iLCJ1c2VyLWFkbWluIl0sImFjY291bnRQcm9ncmFtUm9sZXMiOlsicG0iLCJjbGllbnQtYWRtaW4iXSwibmFtZSI6IlJ5YW4gTydSb3Vya2UiLCJ1c2VybmFtZSI6IlJ5YW4gTydSb3Vya2UiLCJpYXQiOjE2MDI2OTI0NzcsIm5iZiI6MTYwMjY5MjQ3NywiZXhwIjoxNjA1MzIwNDc3LCJpc3MiOiJ1bmtub3duIiwiYXVkIjoidW5rbm93biIsImp0aSI6Imp3dDp1bmRlZmluZWQvMTYwMjY5MjQ3NyJ9.v8Sk2fBR8jjSrvdEJWLjL3MXtj93NzmljkWsCUOQGeloDaiScpC9pJacO1LkfuWWeCfAFzk7_ub4jQe-wuPcEFjrK-Bp-GF8BQaWOl8B4SuEEuFzuzSwwUxNII8Y7JSSowntktz5HUj-_kTuHfm0EHmhdwCjLbxvvcolLbRSPg7OV3rYdoAUGB_vmFuLhYGEBPO52tyzzFSaaz4wk1ZXPvhgXD-GRUn0nYPIiIDgJNMtdkhPdVfoMuu4u5tKTd6CBLaz3pBf61Ovz0uPLHqJbPSu78sdYfpMBCJn2r9yJsYoYD9dTT6EIoHucWDw8UC3buQifZn5JuEPp3KiugWgCk2WX2Gs-ALEROcHbL7mUCGiDn_v5od42lo8hnIqnxQDzGlH0RWcSlwnqwNTtCqcLHh7Ia5Ui4tyGw0GwWUn4UMB6f6_J7CuZEz9ApW_lTIuL3Hdm3WSGzlPAgLsHeBJLsNa0xLB-xFRCUmCTEScClfAT9s_fCurwMZY3MdtlhqHBirWazfukMv6kz0OR2BRcae_vj-DrX1tnKNpifrXSfZRTzyA06lvmNPWapvk5QpAlpR6S5zhlrf4fMiLecxJVCzqoV8YG1Ds_24XUS03TQod409RNGsYCuzeROrm_vuu1muVW0u8m_5lvUJa5b3i2-dvr-hlFqF9lO66bvnZzlk

pyenv init - | source
thefuck --alias | source
alias i3-config="vim ~/.config/i3/config"

