#!/bin/bash

#fecha: 08.092019
#AUTOR: EQUINOKX
#Proposito: actualizar el sistema y limiar la pantalla

NOMBRE="Dart - Security"
DEVELOP="Equinockx"

if [ `id -u` -ne 0 ];
then
   echo "El script solo se ejecuta con permisos root"
   exit 1
fi

clear
echo -e "	\e[5m___  ____ ____ ___    ____ ____ ____ _  _ ____ _ ___ _   _  \e[0m"
echo -e "	\e[5m|  \ |__| |__/  |  __ [__  |___ |    |  | |__/ |  |   \_/   \e[0m"
echo -e "	\e[5m|__/ |  | |  \  |     ___] |___ |___ |__| |  \ |  |    |    \e[0m"
echo -e "	                                                           "
sleep 3
clear
echo " "
echo -e "	\e[92m _    _      _ _    _       _                    \e[0m"
echo -e "	\e[92m| |  / )    | (_)  | |     (_)                   \e[0m"
echo -e "	\e[97m| | / / ____| |_   | |      _ ____  _   _ _   _  \e[0m"
echo -e "	\e[97m| |< < / _  | | |  | |     | |  _ \| | | ( \ / ) \e[0m"
echo -e "	\e[91m| | \ ( ( | | | |  | |_____| | | | | |_| |) X (  \e[0m"
echo -e "	\e[91m|_|  \_)_||_|_|_|  |_______)_|_| |_|\____(_/ \_) \e[0m"
echo " "
echo -e "              By > \e[40;38;5;82m $NOMBRE \e[30;48;5;82m $DEVELOP \e[0m"
echo "                                                           "
echo "                                                           "
echo -e "      Selecciona alguna de las siguientes opciones         "
echo -e "		\e[42;97m1-\e[0m Actualizar"
echo -e "		\e[42;97m2-\e[0m Actualizar versiones de paquetes"
echo -e "		\e[42;97m3-\e[0m Actualizar lista y paquetes disponibles"
echo -e "		\e[42;97m4-\e[0m Actualizar Distribucion"
echo -e "		\e[42;97m5-\e[0m Verificar Version"
echo -e "		\e[42;97m6-\e[0m Informacion del sistema"
echo -e "		\e[42;97m7-\e[0m Actualizar sources.list"
echo -e "		\e[46m8-\e[0m Pantalla Completa. \e[42m[\e[0m \e[91mVirtualBox\e[0m \e[42m]\e[0m "
echo -e "		\e[41;97m9-\e[0m Salir"
echo -e "		     "
read -p "  	> " opc

if [ $opc -eq 1 ];then

	clear
	echo -e " \e[42;97;5mActualizando la lista de paquetes disponibles\e[0m"
	echo " "
	sleep 3
	apt-get update -y
	sleep 2
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear
elif [ $opc -eq 2 ]; then

	clear
	echo -e " \e[42;97;5mActualiando la version de los paquetes\e[0m"
	sleep 3
	apt-get upgrade -y
	sleep 2
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear

elif [ $opc -eq 3 ]; then

	clear
	echo -e " \e[42;97;5mActualiando la version y lista de los paquetes\e[0m"
	sleep 3
	apt-get update && apt-get upgrade -y
	sleep 2
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear

elif [ $opc -eq 4 ]; then

	clear
	echo -e " \e[42;97;5mActualiando la distribucion\e[0m"
	sleep 3
	apt-get update && apt-get upgrade -y
	sleep 2
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear

elif [ $opc -eq 5 ]; then

	clear
	echo -e " \e[42;97;5mVersion del sisteme operativo\e[0m"
	sleep 2
	lsb_release -a
	sleep 6
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear


elif [ $opc -eq 6 ]; then

	clear
	echo -e " 		\e[42;97;5mInformacion del sistema\e[0m"
	echo -e " \e[42;97;5mSe instalara neofetch solo escriba y para confirmar\e[0m"
	echo " "
	sleep 3
	apt install neofetch -y
	clear
	sleep 2
	neofetch
	sleep 9
	clear
	echo " "
	echo -e "		\e[102;97;5mCompletado con exito\e[0m"
	echo " "
	sleep 3
	clear


elif [ $opc -eq 7 ]; then

	clear
	echo -e " \e[42;97;5mActualizar sources.list\e[0m"
	sleep 3
	cd /etc/apt
	truncate -s 0 sources.list
	echo deb http://http.kali.org/kali kali-rolling main non-free contrib > sources.list
	sleep 3
	echo deb-src http://http.kali.org/kali kali-rolling main non-free contrib >> sources.list
	cat sources.list
	echo " "
	echo -e  "			\e[102;97;5mListas actualizadas con exito\e[0m"
	echo -e "			\e[101;97;5mAhora actualice \e[0m"

elif [ $opc -eq 8 ]; then

	clear
	echo -e " \e[42;97;5mActualizando e instalando los recursos necesarios.\e[0m"
	sudo apt-get -y update
	sudo apt-get -y upgrade
	sudo apt-get -y install virtualbox-guest-x11
	sleep 3
	clear
	echo -e " \e[1;31;42m Vamos a reiniciar el sistema operativo para aplicar los cambio....\e[0m"
	sleep 3
	sudo reboot 
	echo " "

else
	clear
	echo "	___  ____ ____ ___    ____ ____ ____ _  _ ____ _ ___ _   _ "
	echo "	|  \ |__| |__/  |  __ [__  |___ |    |  | |__/ |  |   \_/  "
	echo "	|__/ |  | |  \  |     ___] |___ |___ |__| |  \ |  |    |   "
	echo "	                                                           "


fi
