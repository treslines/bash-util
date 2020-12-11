# +-------------------------------------------------------------+
# | INSTALLAR OH-MY-ZBASH DE DEPOIS USAR ESTE AQUI NO .zshrc    |
# +-------------------------------------------------------------+
# https://ohmyz.sh/
# https://github.com/ohmyzsh/ohmyzsh

# +-------------------------------------------------------------+
# | SE USAR PROXIES, CONSIERAR HABILITAR ESSAS LINHAS OU EDITAR |
# +-------------------------------------------------------------+
#proxy_user=$(security find-internet-password -s proxycache.seu.proxy.suffix | grep acct | cut -d '=' -f 2 | sed 's/"//g')
#proxy_password=$(security find-internet-password -gs proxycache.seu.proxy.suffix -w)
#proxy_password=$(echo $proxy_password | sed 's/@/%40/') # simple url encode

#export http_proxy="http://$proxy_user:$proxy_password@proxycache.seu.proxy.suffix:8080"
#export https_proxy=$http_proxy
#export HTTP_PROXY=$http_proxy
#export HTTPS_PROXY=$http_proxy
#export no_proxy="server.que.nao.passa.pelo.proxy"

# +---------------------+
# | NOME DO SEU USUARIO |
# +---------------------+
username = 'rfer' 

# +-------------------------------------------------------------+
# | ANDROID FASTLANE, BOM TER DEFINIDO >>> fastlane screengrab  |
# +-------------------------------------------------------------+
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="$PATH:`gem environment gemdir 2>&1 /dev/null`/bin"
export SSL_CERT_DIR="/usr/local/etc/openssl/certs"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export ADB="/Users/$username/Library/Android/sdk/platform-tools"
export ADB_TOOLS="/Users/$username/Library/Android/sdk/tools"

export ANDROID_HOME="/Users/$username/Library/Android/sdk"
export ANDROID_AAPT="/Users/$username/Library/Android/sdk/build-tools/28.0.3/aapt"

export PATH="$ANDROID_AAPT:$ANDROID_HOME:$ADB_TOOLS:$ADB:$PATH"

# +-------------------------------------------------------------+
# | ALIASSES FOR FASTER NAVIGATION                              |
# +-------------------------------------------------------------+
alias gitlogme="git log --author ricardo"
alias gitlogmeone="git log --author ricardo --oneline"
alias gitlogline="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gitbranchme="git branch -a | grep gc233"
alias gitrelease="git branch -a | grep release"
alias showhidden="ls -la"
alias rename="git branch -m $1"
alias home="cd ~"
alias up="cd .."
alias projects="cd /Users/$username/Projects"
alias repo="cd /Users/$username/Projects/repo"
alias projetoA="cd /Users/$username/Projects/repo/projetoA"
alias projetoB="cd /Users/$username/Projects/repo/projetoB"
alias l="ls -lah --color=auto"


# +------------------+
# | HELPER FUNCTIONS |
# +------------------+
openbash() {
    #open bash with sublime
    subl '/Users/$username/.zshrc'
}

gitconfig() {
    #open bash with sublime
    subl '/Users/$username/.gitconfig'
}

reload(){
    #source bash
    source /Users/$username/.zshrc
}

# $1 search key, $2 directory ex: searchDir mySearchKey directory/
searchWithKeyDir(){
	grep -r $1 $2
}

# $1 search key, $2 directory ex: searchFile mySearchKey directory/file.txt
searchWithKeyFileDir(){
	grep $1 $2
}

# +------+
# | HELP |
# +------+
inhalt() { 
	echo -e ""
	echo -e "-------------------- Util ----------------------"
	echo -e ""
	echo -e "home:  \t\t cd to user home" 
	echo -e "up:  \t\t cd up one level" 
	echo -e "repo:  \t\t cd to repositories root folder" 
	echo -e "projects:  \t cd to Projects folder" 
	echo -e "gitlogme:  \t show my commits only" 
	echo -e "gitlogline:  \t show logs pretty line by line with colored branch tree" 
	echo -e "rename:  \t rename branch locally by passing new name"
	echo -e "gitlogmeone:  \t show my commits only but in one line" 
	echo -e "gitbranchme:  \t show my branches only" 
	echo -e "gitrelease:  \t show release branches only" 
	echo -e "showhidden:  \t show hidden files" 
	echo -e "openbash:  \t opens .zshrc file" 
	echo -e "gitconfig:  \t opens .gitconfig file" 
	echo -e "reload:  \t sources .zshrc file" 	
	echo -e ""
	echo -e "----------------- Repositories -----------------"
	echo -e ""
	echo -e "projetoA:  \t cd to projeto A" 
	echo -e "projetoB:  \t cd to projeto B" 
	echo -e ""
	echo -e "----------------- Help Indexes -----------------"
	echo -e ""
	echo -e "linux:  \t show most used linux commands"
	echo -e "gitcmd:  \t show helpful git commands"
	echo -e "android:  \t show useful android terminal commands"
	echo -e "greps:  \t show useful terminal search commands"
}

linux() { 
	echo -e ""
	echo -e "-------------------- Most Used Commands ----------------------"
	echo -e ""
	echo -e "cd:  \t\t change directory Ex: up one directory: cd .. | home: cd ~" 
	echo -e "ls:  \t\t list files/directories options: -l | -la" 
	echo -e "clear:  \t empty terminal" 
	echo -e "mv:  \t\t move or rename file" 
	echo -e "rm:  \t\t remove file or option -r to remove directory" 
	echo -e "pwd:  \t\t show path current working directory" 
	echo -e "mkdir:  \t create directory" 
	echo -e "open:  \t\t open file - must pass filename ex: path/file.txt" 
	echo -e "cat:  \t\t grab file content and display it in terminal" 
	echo -e "touch:  \t create file or changes its datum" 	
	echo -e "echo:  \t\t print somenting in terminal" 
	echo -e "exit:  \t\t closes terminal" 
	echo -e "curl:  \t\t use it to fetch content from internet" 
	echo -e "ping:  \t\t use it to see if a server is on over hostname or IP"
	echo -e "ssh-keygen:  \t use it to create a private/public key pair"	
	echo -e "printenv:  \t use it to show all your environment vars"
}

greps() {
	echo -e ""
	echo -e "-------------------- Useful Search Commands ----------------------"
	echo -e ""
	echo -e "printenv | grep \"your_search_key\"  \t\t prints out your desired environment var if any" 
	echo -e "history | grep \"your_search_key\"  \t\t searches for the desired history command" 
	echo -e "find . -name \"your_file.ext\"  \t\t searches for the file in current and subfolders" 
	
}

gitcmd() { 
	echo -e ""
	echo -e "-------------------- Usefull Git Commands ----------------------"
	echo -e ""
	echo -e "history | grep \"your_search_key\"   \t find specific command in git history"
}

android() { 
	echo -e ""
	echo -e "-------------------- Usefull Android Commands ----------------------"
	echo -e ""
	echo -e "adb assembleDebug \t\t\t\t builds a debug apk alternativelly to gradle" 
	echo -e "adb installDebug \t\t\t\t installs a previous generated debug apk on your device"
	echo -e "adb reverse tcp:4010 tcp:4010 \t\t\t prism: command to forward device port to prism local server" 
	echo -e "adb forward --remove-all \t\t\t prism: remove all forwarded ports" 
	echo -e "prism mock your_open_api.json -h localhost \t starts prism server at localhost for the given api"
}


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$username/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$username/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$username/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$username/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$username/google-cloud-sdk/completion.zsh.inc'; fi


### VISUAL CUSTOMISATION ### 

# Elements options of left prompt (remove the @username context)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
# Elements options of right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)



# Add a second prompt line for the command
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt 
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"


# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt 
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 18/26/33 wich are the rgb values 
echo -e "\033]6;1;bg;red;brightness;18\a"
echo -e "\033]6;1;bg;green;brightness;26\a"
echo -e "\033]6;1;bg;blue;brightness;33\a"
