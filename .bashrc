# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'














export PS1="\e[38;2;172;240;63m[\u@\h \W]\$ "

# go to workspace

echo
echo '#####################################################'
echo '#####################################################'
echo '######  #######  ########  #####      #####  ########'
echo '######  ##   ##  ##   ###  ### ##    ## ###  ########'
echo '######  #######  ########  ###  ##  ##  ###  ########'
echo '######  ##       ##        ###   ####   ###  ########'
echo '#####################################################'
echo '#####################################################'
echo



cd ~

if [ ! -f  m2.inited ]; then 


    echo "Preparing maven repository..."
    # cp /ppm/SourceCode/java/m2.tar.gz .

    if [  "" = "$M2_URL"  ] ; then 
        echo 'no m2 bundle provided'
    else
        curl -o m2.tar.gz  $M2_URL  && tar xzf m2.tar.gz

        touch m2.inited

    fi

    # curl -o m2.zip http://

fi 

cd /ppm/SourceCode/java/
dos2unix  ./env
source  ./env

