fish_vi_key_bindings

set -x LANG sv_SE.UTF-8
set -x TERMINAL urxvtc
set -x EDITOR nvim
set -x WORKON_HOME ~/.virtualenvs
set -x GOPATH ~/.go
set -x ANDROID_HOME /opt/android-sdk
set -x JAVA_HOME /usr/lib/jvm/java-8-openjdk

if test -d $HOME/bin
	set -x PATH "$HOME/bin" $PATH
end

if test -d "$HOME/.gem/ruby/2.3.0/bin"
	set -x PATH "$HOME/.gem/ruby/2.3.0/bin" $PATH
end

if test -d "$HOME/.golang/bin"
	set -x PATH "$HOME/.golang/bin" $PATH
end

if test -d "/opt/android-sdk/tools"
	set -x PATH "/opt/android-sdk/tools" $PATH
end
