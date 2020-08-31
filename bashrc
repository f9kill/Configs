# Constantes
RED='\e[31;7;1m'
GREEN='\e[32;7;1m'
BLUE='\e[34;7;1m'
END='\e[m'

# Manual aliases
alias ls='ls -p --color=auto'
alias tree='tree -aC'
alias cls='clear'

# Mudando nome da janela do terminal para urxvt.
#case $TERM in
#    rxvt-unicode-256color)
#        trap 'echo -ne "\e]0;$BASH_COMMAND\007"' DEBUG
#    ;;
#esac

# Definindo a variável de ambiente PS1
user=$(whoami)

if [[ "${user}" == "root" ]];then
    export PS1="\n${RED} \u ${END}${BLUE} \w ${END}\n> "
else
    export PS1="\n${GREEN} \u ${END}${BLUE} \w ${END}\n> "
fi