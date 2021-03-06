
##################################################################################################################################
#                                                            Dotfiles                                                            #
##################################################################################################################################

# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

##################################################################################################################################
#                                                            Browser                                                             #
##################################################################################################################################

export BROWSER=google-chrome-stable

##################################################################################################################################
#                                                             Editor                                                             #
##################################################################################################################################

export EDITOR=sublime
export VISUAL=sublime
export PAGER=less

##################################################################################################################################
#                                                            Language                                                            #
##################################################################################################################################

export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

##################################################################################################################################
#                                                              Path                                                              #
##################################################################################################################################

# SSH Key Path Configuration
export SSH_KEY_PATH="~/.ssh/id_ed25519"

# Search synced local manuals first
export MANPATH="$DOTFILES/man:$MANPATH"

# Home Path Names
export NODE_HOME=$HOME/.node/bin
export NODE_MODULES_HOME=$HOME/node_modules/.bin
export RVM_HOME=$HOME/.rvm/bin

# Load custom commands first
export PATH="$DOTFILES/bin:$PATH"

# Then load local bin directories before anything else
export PATH="$PATH:/usr/local/bin:/usr/local/sbin"

# Then load Node everything else. Rule of thumb: project specific before global
export PATH="$PATH:$NODE_MODULES_HOME"
export PATH="$PATH:$NODE_HOME"

# Make sure to load RVM last, because it manipulates the PATH automatically in the end
# → see info: https://rvm.io/rvm/install#troubleshooting-your-install
export PATH="$PATH:$RVM_HOME"
