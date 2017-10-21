source /Users/shan/projects/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle bundler
antigen bundle ruby
antigen bundle rails

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# You probably will want to install powerline fonts https://github.com/powerline/fonts
# antigen theme robbyrussell/oh-my-zsh themes/pure
antigen theme awesomepanda

# Tell antigen that you're done.
antigen apply

#zsh completions though brew
fpath=(/usr/local/share/zsh-completions $fpath)

#
# Executes commands at the start of an interactive session.
# Customize to your needs...
PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"
eval "$(rbenv init -)"

# python environment
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi


# # erlang environment
# if [ -f ~/.kerlrc ]; then
#     source ~/.kerlrc
# fi
# export ERLANG_VERSION="19.3.6"
# . $KERL_DEFAULT_INSTALL_DIR/$ERLANG_VERSION/activate

alias mongo="mongod --config /usr/local/etc/mongod.conf"

### Emacs
alias emacs="/usr/local/Cellar/emacs-mac/emacs-25.3-mac-6.7/Emacs.app/Contents/MacOS/Emacs -nw"

### kulcare aliases
alias cdk="cd ~/projects/kulcare/kulcare_doctor_Patient/"
alias sshks="ssh deploy@188.166.225.36"
alias sshkst="ssh deploy@188.166.223.36 -t tmux attach-session -t shan"
alias sshkdb="ssh deploy@128.199.204.218"
alias sshkred="ssh deploy@128.199.139.190"
alias sshkes="ssh deploy@188.166.226.119"
alias sshkp="ssh deploy@188.166.210.127"
alias sshksea="ssh deploy@188.166.226.119" #search
alias sshkmsg="ssh deploy@139.59.250.18" #xmpp
### unscrewed aliases
alias cdu="cd ~/projects/unscrewed/unscrewed-new/unscrewed-api-2/"
alias sshu="ssh deploy@138.68.22.170"
alias sshut="ssh deploy@138.68.22.170 -t tmux attach-session"

### resque in a project directory
alias resque="bundle exec rake resque:work QUEUE='*'"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias config='/usr/bin/git --git-dir=/Users/shan/.cfg/ --work-tree=/Users/shan'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CFLAGS=-I/usr/local/opt/openssl/include
