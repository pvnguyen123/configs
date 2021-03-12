#
# filesource: $HeadURL: file:///export/content/svn/repos/cfe/trunk/masterfiles/configs/linux/rhel6/common/skel/.bashrc $
# version    : $Id: .bashrc 6 2013-04-03 23:50:33Z dcarvalh $
#
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#setxkbmap -option ctrl:nocaps

alias ll='ls -FGlhp --color=auto'                        # Preferred 'ls' implementation
alias la='ls -FGlAhp --color=auto'                       # Preferred 'ls' implementation
alias l='ls -FGhp --color=auto'                          # Preferred 'ls' implementation
alias ls='ls -FGhp --color=auto'                          # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias vi='vim'
alias pinst='app-status pin3 -fcorp-lca1 --show-host-info'
export EDITOR=vim
export GIT_EDITOR=vim


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/hpnguyen/google-cloud-sdk/path.bash.inc' ]; then . '/home/hpnguyen/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/hpnguyen/google-cloud-sdk/completion.bash.inc' ]; then . '/home/hpnguyen/google-cloud-sdk/completion.bash.inc'; fi
export VOLTA_HOME="/home/hpnguyen/.volta"
export JAVA_HOME='/export/apps/jdk/JDK-1_8_0_72'
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

