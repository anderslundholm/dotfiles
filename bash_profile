. ~/.bashrc 
echo "*** BUG Watch ***"
dig +short -t txt istheinternetonfire.com
 
myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"

alias myip="echo ${myip}"
