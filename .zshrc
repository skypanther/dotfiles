# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/timpoulsen/.oh-my-zsh"

# Themese
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="tim_poulsen"
# jreese, avit
# ZSH_THEME="theunraveler"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git-prompt)

source $ZSH/oh-my-zsh.sh

# My customizations
unsetopt sharehistory

alias src="echo 'reloading .zshrc' && source $HOME/.zshrc"
alias gcdu="git checkout main && git pull origin main && git submodule update --init --recursive"
alias gsub="git submodule update --init --recursive"
# git delete both local and remote branch
gitbranchdelete() {
	git branch -D $1 && git push origin --delete $1
}
alias gitchurn="git log --all -M -C --name-only --format='format:' "$@" | sort | grep -v '^$' | uniq -c | sort -n"

alias sshtacklecas='ssh -i "~/.ssh/rds-access-ec2-key.pem" ec2-user@54.70.107.6'
alias mailchimp='oathtool --totp --base32 5RIICDM2QOUT5GUM | pbcopy'

# required for upstream-api because I installed OpenSSL with Homebrew, so pointing to built-ins here
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# Alias for LocalStack
alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=${DEFAULT_REGION:-us-west-2} aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"

# node version manager
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"
# export AWS_PROFILE=tackle-dev
# export AWS_PROFILE=developer-test-poweruser
export AWS_PROFILE=developer-test-admin
