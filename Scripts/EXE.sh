#!/bin/bash
chmod 777 EXE.sh
#====================================================

function EXE {

cd /home/*/ # Se viaja hasta el directorio "Carpeta Personal"
if test -d .HACKNET # Se verifica si existe ese archivo oculto en la "Carpeta Personal" y si no existe crea el arbol de directorios
	then
		cd /home/*/.HACKNET
		chmod 777 .HACKNET.sh

		bash .HACKNET.sh
	else
#---------------TRES PRINCIPALES CARPETAS EN DONDE ESTÁ LOS ARCHIVOS DELJUEGO
		
		mkdir -p .HACKNET/.Temp   # //Archivos en Temporal (la basura)
		mkdir .HACKNET/.Users     # //Datos del jugador
		mkdir .HACKNET/.Resources # //Recursos para el juego
		mkdir .HACKNET/.Campania  # //Datos de la campaña
		mkdir .HACKNET/.Historia  # //Datos de la Historia
		mkdir .HACKNET/.Desktops # //Es el "escritorio" para cada usuario, ya que cada uno tendrà su hiostoria completada


#---------------EN RESOURCES:
		mkdir .HACKNET/.Resources/.Img          # //Se almacenan la img.png que se mostraran a lo largo del juego
		mkdir .HACKNET/.Resources/.Logros       # //Se almacenara los logros por id
		mkdir .HACKNET/.Resources/.Herramientas # //Tienen un id y cada un se expresa en un txt
#--------------------------------------------------------------------------------------------------------------------------------------------#

#---------------EN CAMPAÑA:
		mkdir .HACKNET/.Campania/.Tutorial    # //
		mkdir .HACKNET/.Campania/.CampInicial # //
		mkdir .HACKNET/.Campania/.CampFinal   # //
	#------EN TUTORIAL:
		mkdir .HACKNET/.Campania/.Tutorial/.Misiones 	      # //Cada mision es un SH (dicutible txt)
		mkdir .HACKNET/.Campania/.Tutorial/.MensajesHistoria # //Son los SH preparados para las animaciones (historia)

	#------EN CAMP_INICIAL:
		mkdir .HACKNET/.Campania/.CampInicial/.Misiones 	 # //Cada mision es un SH (dicutible txt)
		mkdir .HACKNET/.Campania/.CampInicial/.MensajesHistoria # //Son los SH preparados para las animaciones (historia)

	#------EN CAMP_FINAL:
		mkdir .HACKNET/.Campania/.CampFinal/.Misiones 	       # //Cada mision es un SH (dicutible txt)
		mkdir .HACKNET/.Campania/.CampFinal/.MensajesHistoria # //Son los SH preparados para las animaciones (historia)
#--------------------------------------------------------------------------------------------------------------------------------------------#

#---------------EN HISTORIA:
		mkdir .HACKNET/.Historia/.Capitulo1 # //Solo este estara (de momento)
		mkdir .HACKNET/.Historia/.Capitulo2
		mkdir .HACKNET/.Historia/.Capitulo3

#--------------------------------------------------------------------------------------------------------------------------------------------#
#--------------------------------------------------------------------------------------------------------------------------------------------#

		mv /home/*/Escritorio/Recursos/.HACKNET.sh /home/*/.HACKNET/ #MOvemos el juego a la carpeta raiz
		cd /home/*/.HACKNET/ #Entramos en el directorio donde estan todos los componentes del juego
		chmod 777 .HACKNET.sh #Le damos al archivo permisos para que se ejecute
		bash .HACKNET.sh #Iniciamos el Juego
#--------------------------------------------------------------------------------------------------------------------------------------------#
#--------------------------------------------------------------------------------------------------------------------------------------------#
fi
}
EXE












