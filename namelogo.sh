
RED='\033[0;31m'
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
clear
#Change Directory
cd $PREFIX/etc
#Remove Old files
rm bash.bashrc
rm motd
printf "${GREEN}"
printf "===================================================\n"
printf "${ORANGE}"
figlet -w 200 -f standard "Change Text"
printf "${BLUE}"
figlet -w 200 -f  small "maxpro-boop"
printf "${GREEN}"
printf "====================================================\n"
printf "${STOP}"
echo ""
read -p $'\e[1;36m Enter u Nickname:: \e[0m' name
# Open file descriptor (fd) 3 for read/write on a bash file.
 exec 3<> bash.bashrc
 # Let's print some text to fd 3
echo ""
echo " PS1='\033[0;31m
━━We━━━Are━━━━Anonymous
\033[0;00m━━━━━━━[[$name]]━━━━━━>\033[0m'

fortune | cowsay | toilet --metal -f term
toilet -f smblock --filter border:metal -w 200 '$name'

shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist ">&3

 # Close fd 3 
exec 3>&-
echo " $Termux Logo Was Changed Go To New Session To See The New"
