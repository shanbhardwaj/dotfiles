alias cdk "cd ~/projects/kulcare/"
alias cdu "cd ~/projects/unscrewed/unscrewed-new/unscrewed-api-2"

set PATH /usr/local/anaconda3/bin $PATH
# set MIX_TARGET=bbb
set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/shan/.nvm/versions/node/v8.9.1/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish ]; and . /Users/shan/.nvm/versions/node/v8.9.1/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish

source (conda info --root)/etc/fish/conf.d/conda.fish
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set PATH $HOME/.jenv/bin $PATH
