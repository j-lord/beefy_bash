#   -----------------------------
#   1. MAKE TERMINAL BETTER
#   -----------------------------
alias pip='pip3'                            # no need to state the 3 after pip
alias c='clear'                             # clear with a c
alias l='logout'                            # logou with an l
alias e='emacs'                             # edit with emacs with an e
alias path='echo -e ${PATH//:/\\n}'         # get path with just path
alias t='top -u'                            # top -u with just a t
alias python='python3'                      # open python3 without stating it explicitly
alias p='python'                            # open python with just a p
alias py='p'                                # in case I forget to use just the p
alias ls='ls -G'                            # color code directories vs files
alias o='open -a Finder ./'                 # o: Opens current directory in MacOS Finder
alias trash='open ~/.Trash'
alias ~="cd ~"                              # ~: Go Home
alias to="~/"                               # takes out the step of the home directory
alias path='echo -e ${PATH//:/\\n}'         # path: Echo all executable Paths
alias ..='cd ../'                           # Go back 1 directory level
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias s='sublime'                           # edit: Opens any file in sublime editor s file.ini
alias pw='pwd'
# be carefull when there are folders in your path that contain
# spaces in the name, pw breaks at space
# show all of the python modules that are currently installed 
alias mod='cd /Library/Frameworks/Python.framework/Versions/3.5/lib/python3.5/site-packages' 
# upgrade all of the python modules !!!WARNING!!! this often breaks something as some module functionality may have been altered
alias modu="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias here='pwd'                            # takes out the step needed to type current path
alias his='builtin history | grep "$@"'     # history search
alias pipu='pip install --upgrade pip'      # upgrade pip
alias sc='cd ~/scripts/'                    # go to scrips folder <-- where the scripts are kept
alias scripts='cd ~/scripts'                # in case I forget about sc 
alias color='python ~/scripts/colors.py'    # runs script that opens all python color options
alias colors='color'                        # sometimes I may forget the command
HISTFILESIZE=100000                         # increase bash history size 

#   helper functions 
#   ------------------------------------------------------------                
alias ff="find . -name "                   # fastfind quickly search for file
alias pro='pw=$(pw); e ~/.bash_profile; cd $pw'    # allows you to edit bash_profile from anywhere
alias so='pw=$(pw); cd; source .bash_profile; cd $pw'  # allows you to source bash profile from anywhere
cd() { builtin cd "$@"; ls; pwd; }         # list directory contents and path upon entering directory
pipy() { pip install "$@" -t . ;}          # pipy numpy -> pip install numpy

#   -------------------------------
#   2. ENVIRONMENT CONFIGURATION
#   -------------------------------
export EDITOR=/usr/bin/emacs           # set default editor (all hail emacs)

default_emoji=🤓
export PS1="$emoji smile@face$ "   
emoji() { emoji="$@"; builtin export PS1="$emoji smile@face$ ";}
#   to change the default emoji, must edit this file with nano (I know...I know...) 
#   $ nano ~/.bash_profile
#   ctrl + command + space
#   default_emoji = doube click desired emoji 
#   or issue the emoji ☠️ functon 

#   the only issue is that when you open a new tab or window it will be a blank space. 
#   still trying to figure this one out 

#   Set Paths
#   ------------------------------------------------------------
export PATH=/usr/local/bin:$PATH

############## this is for CUDA to work ###################
export LPATH=$LPATH:/usr/lib/nvidia-8.0:/opt/bin:/opt/lib64:/opt/lib
export LIBRARY_PATH=$LIBRARY_PATH:/usr/lib/nvidia-8.0:/opt/lib64:/opt/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia-8.0:/opt/lib64:/opt/lib
export PATH=$PATH:/opt/bin:/opt/lib64:/opt/lib
# if not doing work on GPUs don't worry about this
############################################################

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
PYTHONPATH="${PYTHONPATH}:/Library/Frameworks/Python.framework/Versions/3.5/lib/python3.5/site-packages"
export PYTHONPATH
