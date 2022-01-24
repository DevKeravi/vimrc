# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/cmkrosp/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
  tmuxinator
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zshrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To erase user name
#prompt_context() { if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then prompt_segment black default "%(!.%{%F{yellow}%}.)$USER" fi }
DEFAULT_USER="cmkrosp"
# redefine prompt_context for hiding user@hostname
prompt_context () { }

# for disable auto suspend
#echo "if [ -f ~/.suspendwarning.sh ]; then
#. ~/.suspendwarning.sh
#fi" >> ~/.zshrc

# for go path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN

# for nsq
export PATH=$PATH:/home/cmkrosp/nsq/bin
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
# for tmux
#export TERM="xterm-256color"
export TERM="xterm-256color"
export VISUAL="vim"
export EDITOR="$VISUAL"
alias mux="tmuxinator"
alias tx="mux start edit"


export SP_TWITTER_KEY=f8PMCwCVZclRRclvEtN0oykf7
export SP_TWITTER_SECRET=2XY734qMeUhRYOgj1XO2IAbBueDnIfz6aCd9H2pr9hxgrY3wFT
export SP_TWITTER_ACCESSTOKEN=1297075913855602693-vjtJPxj6Y80ePdOxpVlKdc8Xyq2SpG
export SP_TWITTER_ACCESSSECRET=4yBPEzU2RMOap4lQkotj64Rscwxf1T6H8PsaBbrOrW9hs

export GOOGLE_SECURITY_KEY=AIzaSyDGoFvIpzceExzB3vTxMWTNpFKUaO9MBdsAIzaSyDGoFvIpzceExzB3vTxMWTNpFKUaO9MBds

export GOOGLE_CLIENT_ID=948906113443-68s7ulgc3g1pql10npi3cuedj9e484bl.apps.googleusercontent.com
export GOOGLE_CLIENT_SECRET=tmoRcTS7IIO36tYpRyO35IC1


export KAKAO_RESTAPI_KEY=0e1155918a17b123c7f0c8474bf7ade1
export KAKAO_ADMIN_KEY=08f2477bbaa828b363e5b2ded1b6293c
export KAKAO_REDIRECT_URL=http://cmkrosp.iptime.org:8080/api/auth
export KAKAO_CLIENT_SECRET=RivyEcsc2LPk9J30olPCUSqbb2NvqZY2
