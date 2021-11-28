# bash profile

function uptimefunc {
	uptime
}

function getBattLife {

	BLIFE=$(envstat -s acpibat0:charge | grep charge | cut -d'(' -f 2 | cut -d')' -f 1)
	echo $BLIFE
}

function isBattCharging {
	ISCHARGE=$(envstat -s acpibat0:charging  | grep charging | cut -d':' -f 2 | grep FALSE -)

	if [ -z "$ISCHARGE" ]
	then
		echo "\$ISCHARGE is (True) $ISCHARGE"
	else
		echo "\$ISCHARGE is (False) $ISCHARGE"
	fi

}
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/pkg/share/GNUstep/Applications/WPrefs.app
export PATH=$PATH:/home/graphix/graphix/.local/bin
export PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\](\w)->\e[m "

export CVSROOT="anoncvs@anoncvs.NetBSD.org:/cvsroot"
export CVS_RSH="ssh"



alias beep="cvlc ~/audio/beep.mp3 --play-and-exit 2> /dev/null "
alias updatekern="cd /usr/src; cvs update -A -dP"
alias updateX11="cd /usr/xsrc; cvs update -A -dP"
alias cd2kernconf="cd /usr/src/sys/arch/amd64/conf"
alias maxvol="mixerctl -w outputs.master=254"
alias minvol="mixerctl -w outputs.master=0"
#alias python3="python3.9"
export TERM=wsvt25
alias checkbattery="/usr/sbin/envstat | grep -A10 -i bat | grep 'charge:' | cut -d '(' -f 2 | cut -d ')' -f 1"
alias brightup="/usr/pkg/sbin/intel_backlight incr 10"
alias brightdown="/usr/pkg/sbin/intel_backlight decr 10"


