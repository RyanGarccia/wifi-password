TSU=$(which tsu)
SUDO=$(which sudo)
apt-get install figlet > /dev/null
figlet -f smslant "          Install"
if [ -z "$TSU" ];then
    sleep 3
    echo
    echo " O tsu não esta instalado..."
    echo
    echo " Você deseja instala-lo?"
    echo
    sleep 2
    read -p "[々]~>> : " tsu
    if [ "$tsu" = "y" -o "$tsu" = "Y" ];then
        echo " Instalando o TSU, aguarde..."
        apt install tsu > /dev/null
        echo
	echo " O tsu foi instalado com sucesso!"
    else
        echo " Ok!"
    fi

else
    sleep 3
    echo
    echo " O tsu esta instalado..."
    echo
fi

if [ -z "$SUDO" ];then
    sleep 3
    echo
    echo " O sudo não esta instalado..."
    echo
    echo " Você deseja instala-lo?"
    echo
    read -p "[々]~>> : " sudo
    echo
    if [ "$sudo" = "y" -o "$sudo" = "Y" ];then
        echo
        echo " Instalando o SUDO, aguarde..."
        pkg install ncurses-utils > /dev/null
	cd core
	cp -r termux-sudo $HOME
	cd
	cd termux-sudo
	chmod +x *
	cat sudo > /data/data/com.termux/files/usr/bin/sudo
	chmod 700 /data/data/com.termux/files/usr/bin/sudo
	cd
	cd wifi-password
        echo
        echo " O sudo foi instalado com sucesso!..."
    else
        echo " Ok!"
	exit
    fi
else
    sleep 3
    echo
    echo " O sudo esta instalado..."
    echo
fi
