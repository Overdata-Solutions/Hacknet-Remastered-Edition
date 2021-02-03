#!/bin/bash

#==================================================================================================================================

#BIBLIOTECA DE COLORES Y HERRAMIENTAS{
	#============================================================================================================================================================

	# COLORES DE BOTONES Y SIMBOLOS DEL SISTEMA {

		#HERRAMIENTAS GENERALES DEL SISTEMA {
			system_OrdenNoEncontrada=$(echo -e "\e[mSYSTEM:/~ Oren no encontrada.\e[0m")
			system_Linea5=$(echo -e "\e[m$textoEnLinea5\e[0m")
			system_Linea4=$(echo -e "\e[m$textoEnLinea4\e[0m")
			system_Linea3=$(echo -e "\e[m$textoEnLinea3\e[0m")
			system_Linea2=$(echo -e "\e[m$textoEnLinea2\e[0m")
			system_Linea1=$(echo -e "\e[m$textoEnLinea1\e[0m")

			system_SujetoNomLogeado=0
			system_IDSujetoLogeado=3
			yaLogeado=0


			# Distintas secciones de la Interfaz para rellenar
			textoEnLinea5="" 
			textoEnLinea4=""
			textoEnLinea3=""
			textoEnLinea2=""
			textoEnLinea1="" 

			#Variable que se implenenta para llenar espacios en las secciones de la interfaz
			textoEnLineaM="                                                                                        " 
			system_IndicadorPantalla=""
		#}

		#-------COLORES DEL SISTEMA:
			color_MensajeWARNING=$(echo -e "\e[1;3;33m[WARNING.]\e[6m")
			color_MensajeERROR=$(echo -e "\e[1;3;31m[ERROR.]\e[0m")		
			color_MensajeRIGHT=$(echo -e "\e[1;3;32m[OK.]\e[0m")
			color_CirculoRED=$(echo -e "\e[1;5;31;49m◉\e[0m")  #Comandos para el SYSTEM
			color_CirculoCYAN=$(echo -e "\e[1;5;36;49m◉\e[0m") #Es para comandos de MENU_PRINCIPAL
			color_CirculoYELL=$(echo -e "\e[1;5;33;49m◉\e[0m") #Es para comandos de OPCIONES DE MENU_p
			color_CirculoBLK=$(echo -e "\e[1;5;7;49m◉ \e[0m")  
			color_FlechaABAJO_FULL_RED=$(echo -e "\e[1;31;49m▾\e[0m")  #Comandos para el SYSTEM
			color_FlechaABAJO_FULL_CYAN=$(echo -e "\e[1;36;49m▾\e[0m") #Es para comandos de MENU_PRINCIPAL
			color_FlechaABAJO_FULL_YELL=$(echo -e "\e[1;33;49m▾\e[0m") #Es para comandos de MENU_p
			color_FlechaABAJO_LIGHT_RED=$(echo -e "\e[1;31;49m▹\e[0m")  #Comandos para el SYSTEM
			color_FlechaABAJO_LIGHT_CYAN=$(echo -e "\e[1;36;49m▹\e[0m") #Es para comandos de MENU_PRINCIPAL
			color_FlechaABAJO_LIGHT_YELL=$(echo -e "\e[1;33;49m▹\e[0m") #Es para comandos de MENU_p

			color_PromptSujetoRED=$(echo -e "\e[1;5;31m|>\e[0m") #Es el color y opcion del PROMPT por defecto
			
		#-------COLOR DE LA BARRA SUPERIOR DE OPCIONES 
			color_BarraSuperior1=$(echo -e "\e[1;46m┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐\e[0m")
			color_BarraSuperior2=$(echo -e "\e[1;46m|  〶 OPCIONES       | ▁  | ▢  |  X || 〶 \e[0m")
			color_BarraSuperior3=$(echo -e "\e[1;46m|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐\e[0m")

		#-------COLOR DE LA BARRA INFERIOR AL TITULO
			color_BarraSuperiorTitulo1=$(echo -e "\e[1;46m┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐\e[0m")
			color_BarraSuperiorTitulo2=$(echo -e "\e[1;46m| 〶 SELECTOR DE OPCIONES                              | ▁  | ▢  |  X  |\e[0m")
			color_BarraSuperiorTitulo3=$(echo -e "\e[1;46m|━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━|\e[0m")

		#-------COLOR DE TITULO
			color_Titulo1=$(echo -e "\e[1mdb   db  .d8b.   .o88b. db   dD d8b   db d88888b d888888b\e[0m")
			color_Titulo2=$(echo -e "\e[1m08   08 d8'  8b d8P  Y8 88 ,8P' 888o '88 88'     '~~88~~'\e[0m")
			color_Titulo3=$(echo -e "\e[1m18ooo88 88ooo88 8P      88,8P   88V8o 88 88ooooo    88\e[0m")
			color_Titulo4=$(echo -e "\e[1m08~~~81 88~~~88 8b      88'8b   88 V8o88 88~~~~~    88\e[0m")
			color_Titulo5=$(echo -e "\e[1m08   88 88   88 Y8b  d8 88 '88. 88  V888 88.        88\e[0m")
			color_Titulo6=$(echo -e "\e[1mY1   YP YP   YP  'Y88P' YP   YD VP   V8P Y88888P    YP\e[0m")




		#-------COLOR DEL TEXTO INVERTIDO
			color_Texto_MP1INVERT=$(echo -e "\e[1;7;33mJUGAR A HACKNET\e[0m")
			color_Texto_MP2INVERT=$(echo -e "\e[1;7;33mINICIAR SESIÓN\e[0m")
			color_PuntoTexto2INVERT=$(echo -e "\e[1;7;36m.\e[0m")
			color_Texto_MP3INVERT=$(echo -e "\e[1;7;33mREGISTRARSE\e[0m")
			color_PuntoTexto3INVERT=$(echo -e "\e[1;7;36m....\e[0m")
			color_Texto_MP4INVERT=$(echo -e "\e[1;7;33mHISTORIA\e[0m")
			color_PuntoTexto4y5INVERT=$(echo -e "\e[1;7;36m.......\e[0m")
			color_Texto_MP5INVERT=$(echo -e "\e[1;7;33mCRÉDITOS\e[0m")
			color_Texto_MP6INVERT=$(echo -e "\e[1;7;33mSALIR DEL JUEGO\e[0m")

		#-------COLOR DEL MARGEN DEL TEXTO
			color_MargenSuperiorTexto=$(echo -e "\e[1;39m┌────                    ┐ ┌ ===================================== ┐\e[0m")
			color_MargenInferiorTexto=$(echo -e "\e[1;39m└====                    ┘ └ ===================================== ┘\e[0m")
	#}

	#============================================================================================================================================================

	# COLORES {
		#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		#=====================================SYSTEM:
		#===========================================|

			color_Opcion_SYS1=$(echo -e "\e[1;3;33msystem.goto.menuprincipal      \e[0m")	
			color_SujetoLogeadoL1=$(echo -e "\e[1;7;49m AUTENTIFICACION:                $color_CirculoBLK\e[0m")
			color_SujetoLogeadoL2=$(echo -e "\e[1;7;31;49m NO SE HA LOGEADO NINGUN SUJETO    \e[0m")											 
			color_SujetoLogeadoL3=$(echo -e "\e[1;7;49m ID: $system_SujetoNomLogeado\e[0m")

			color_EspNullC28=$(echo -e "\e[1;7;49m                           \e[0m")
			color_EspNullC27=$(echo -e "\e[1;7;49m                          \e[0m")
			color_EspNullC26=$(echo -e "\e[1;7;49m                         \e[0m")
			color_EspNullC25=$(echo -e "\e[1;7;49m                        \e[0m")
			color_EspNullC24=$(echo -e "\e[1;7;49m                       \e[0m")
			color_EspNullC23=$(echo -e "\e[1;7;49m                      \e[0m")
			color_EspNullC22=$(echo -e "\e[1;7;49m                     \e[0m")
			color_EspNullC21=$(echo -e "\e[1;7;49m                    \e[0m")
			color_EspNullC20=$(echo -e "\e[1;7;49m                   \e[0m")
			color_EspNullC19=$(echo -e "\e[1;7;49m                  \e[0m")

			#EN INVERT:
				colorINVERT_Opcion_SYS1=$(echo -e "\e[1;3;33msystem.goto.menuprincipal      \e[0m")
			#EN DIM:
				colorDIM_Opcion_SYS1=$(echo -e "\e[1;2;3msystem.goto.menuprincipal      \e[0m")



		#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		#=============================MENU PRINCIPAL:
		#===========================================|
			color_Texto_MP1=$(echo -e "\e[1;33mJUGAR A HACKNET\e[0m")
			color_Texto_MP2=$(echo -e "\e[1;33mINICIAR SESIÓN\e[0m")
			color_Texto_MP3=$(echo -e "\e[1;33mREGISTRARSE\e[0m")
			color_Texto_MP4=$(echo -e "\e[1;33mHISTORIA\e[0m")
			color_Texto_MP5=$(echo -e "\e[1;33mCRÉDITOS\e[0m")
			color_Texto_MP6=$(echo -e "\e[1;33mSALIR DEL JUEGO\e[0m")

			color_PuntoTexto2=$(echo -e "\e[1;36m.\e[0m")
			color_PuntoTexto3=$(echo -e "\e[1;36m....\e[0m")
			color_PuntoTexto4y5=$(echo -e "\e[1;36m.......\e[0m")
			
			#EN INVERT:
				colorINVERT_Texto_MP1=$(echo -e "\e[1;33mJUGAR A HACKNET\e[0m")
				colorINVERT_Texto_MP2=$(echo -e "\e[1;33mINICIAR SESIÓN\e[0m")
				colorINVERT_Texto_MP3=$(echo -e "\e[1;33mREGISTRARSE\e[0m")
				colorINVERT_Texto_MP4=$(echo -e "\e[1;33mHISTORIA\e[0m")
				colorINVERT_Texto_MP5=$(echo -e "\e[1;33mCRÉDITOS\e[0m")
				colorINVERT_Texto_MP6=$(echo -e "\e[1;33mSALIR DEL JUEGO\e[0m")

			#EN DIM:
				colorDIM_Texto_MP1=$(echo -e "\e[1;2;33mJUGAR A HACKNET\e[0m")
				colorDIM_Texto_MP2=$(echo -e "\e[1;2;33mINICIAR SESIÓN\e[0m")
				colorDIM_Texto_MP3=$(echo -e "\e[1;2;33mREGISTRARSE\e[0m")
				colorDIM_Texto_MP4=$(echo -e "\e[1;2;33mHISTORIA\e[0m")
				colorDIM_Texto_MP5=$(echo -e "\e[1;2;33mSALIR DEL JUEGO\e[0m")

		#-----CODIGOS DE OPCION MENU PRINCIPAL: SON LOS COLORES POR DEFECTO DE CODIGO EN LA SECCION DE OPCIONES
			color_Opcion_MP1=$(echo -e "\e[1;3;33msystem.status.turn.play\e[0m")
			color_Opcion_MP2=$(echo -e "\e[1;3;33msystem.state.login\e[0m")
			color_Opcion_MP3=$(echo -e "\e[1;3;33msystem.state.register\e[0m")
			color_Opcion_MP4=$(echo -e "\e[1;3;33msystem.access.history\e[0m")
			color_Opcion_MP5=$(echo -e "\e[1;3;33msystem.view.credits\e[0m")
			color_Opcion_MP6=$(echo -e "\e[1;3;33msystem.out.exit\e[0m")

			#EN INVERT: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorINVERT_Opcion_MP1=$(echo -e "\e[1;3;33msystem.status.turn.play      \e[0m")
				colorINVERT_Opcion_MP2=$(echo -e "\e[1;3;33msystem.state.login           \e[0m")
				colorINVERT_Opcion_MP3=$(echo -e "\e[1;3;33msystem.state.register        \e[0m")
				colorINVERT_Opcion_MP4=$(echo -e "\e[1;3;33msystem.access.history        \e[0m")
				colorINVERT_Opcion_MP5=$(echo -e "\e[1;3;33msystem.view.credits          \e[0m")
				colorINVERT_Opcion_MP6=$(echo -e "\e[1;3;33msystem.out.exit              \e[0m")
					
			#EN DIM: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorDIM_Opcion_MP1=$(echo -e "\e[1;2;3;33msystem.status.turn.play\e[0m")
				colorDIM_Opcion_MP2=$(echo -e "\e[1;2;3;33msystem.state.login\e[0m")
				colorDIM_Opcion_MP3=$(echo -e "\e[1;2;3;33msystem.state.register\e[0m")
				colorDIM_Opcion_MP4=$(echo -e "\e[1;2;3;33msystem.access.history\e[0m")
				colorDIM_Opcion_MP5=$(echo -e "\e[1;2;3;33msystem.view.credits\e[0m")
				colorDIM_Opcion_MP6=$(echo -e "\e[1;2;3;33msystem.out.exit\e[0m")

			#VISTA=OPCION: SON LOS USADOS EN EL LA BARRA DE VISTA
				colorDIM_CodigoOP_MP1=$(echo -e "\e[1;2;3msystem.status.turn.play        \e[0m")
				colorDIM_CodigoOP_MP2=$(echo -e "\e[1;2;3msystem.state.login             \e[0m")
				colorDIM_CodigoOP_MP3=$(echo -e "\e[1;2;3msystem.state.register          \e[0m")
				colorDIM_CodigoOP_MP4=$(echo -e "\e[1;2;3msystem.access.history          \e[0m")
				colorDIM_CodigoOP_MP5=$(echo -e "\e[1;2;3msystem.view.credits            \e[0m")
				colorDIM_CodigoOP_MP6=$(echo -e "\e[1;2;3msystem.out.exit                \e[0m")

		#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		#==================================REGISTRAR:
		#===========================================|
			color_Texto_REG1=$(echo -e "\e[1;33mCARGAR NOMBRE\e[0m")
			color_Texto_REG2=$(echo -e "\e[1;33mCARGAR CONTRASEÑA\e[0m")
			color_Texto_REG3=$(echo -e "\e[1;33mREGRESAR AL MENÚ\e[0m")

			#EN INVERT:
				colorINVERT_Texto_REG1=$(echo -e "\e[1;7;33mINGRESAR NOMBRE\e[0m")
				colorINVERT_Texto_REG2=$(echo -e "\e[1;7;33mINGRESAR CONTRASEÑA\e[0m")
				colorINVERT_Texto_REG3=$(echo -e "\e[1;7;33mREGRESAR\e[0m")
			#EN DIM:
				colorDIM_Texto_REG1=$(echo -e "\e[1;2;33mINGRESAR NOMBRE\e[0m")
				colorDIM_Texto_REG2=$(echo -e "\e[1;2;33mINGRESAR CONTRASEÑA\e[0m")
				colorDIM_Texto_REG3=$(echo -e "\e[1;2;33mREGRESAR\e[0m")

		#-----CODIGOS DE OPCION REGISTRAR
				color_Opcion_REG1=$(echo -e "\e[1;3;33msystem.add.nameaccount:\e[0m")
				color_Opcion_REG2=$(echo -e "\e[1;3;33msystem.add.passaccount:\e[0m")

			#EN INVERT: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorINVERT_Opcion_REG1=$(echo -e "\e[1;7;3msystem.add.nameaccount:\e[0m")
				colorINVERT_Opcion_REG2=$(echo -e "\e[1;7;3msystem.add.passaccount:\e[0m")

			#EN DIM: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorDIM_OpcionM_REG1=$(echo -e "\e[1;2;3;33msystem.add.nameaccount:\e[0m")
				colorDIM_OpcionM_REG2=$(echo -e "\e[1;2;3;33msystem.add.passaccount:\e[0m")

			#VISTA=OPCION: SON LOS USADOS EN EL LA BARRA DE VISTA
				colorDIM_Codigo_REG1=$(echo -e "\e[1;2;3msystem.add.nameaccount:        \e[0m")
				colorDIM_Codigo_REG2=$(echo -e "\e[1;2;3msystem.add.passaccount:        \e[0m")

		#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		#=============================INICIAR SESION:
		#===========================================|

		#INDICACIONES: Se pueden almacenar hasta 3 SUJETOS; hay 3 Espacios en la GUI que su valor dependera de los nombres almacenados	#		 mas su porcentaje de historia que llevo a cabo. 
		#	       Con "\n" se hace un salto de linea 
		#	       Con "-e" en el comando echo se permite el uso del caracter "\"
		#	       El almacenado del nombre de un SUJETO existente se verifica con la siguiente estructura:


			#VISTA=OPCION: SON LOS USADOS EN EL LA BARRA DE VISTA
				colorDIM_OpcionOP_IS1=$(echo -e "\e[1;2;3msystem.selectaccount:SJO_000   \e[0m")
				colorDIM_OpcionOP_IS2=$(echo -e "\e[1;2;3msystem.selectaccount:SJO_001   \e[0m")
				colorDIM_OpcionOP_IS3=$(echo -e "\e[1;2;3msystem.selectaccount:SJO_002   \e[0m")
				colorDIM_OpcionOP_IS4=$(echo -e "\e[1;2;3msystem.modify.accountselect    \e[0m")
				colorDIM_OpcionOP_IS5=$(echo -e "\e[1;2;3msystem.remove.accountselect    \e[0m")
				colorDIM_OpcionOP_IS6=$(echo -e "\e[1;2;3msystem.change.nameaccount      \e[0m")
				colorDIM_OpcionOP_IS7=$(echo -e "\e[1;2;3msystem.change.passaccount      \e[0m")

		#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		#==================================MODIFICAR:
		#===========================================|		
			color_Texto_MOD1=$(echo -e "\e[1;33mMOD. NOMBRE\e[0m")
			color_Texto_MOD2=$(echo -e "\e[1;33mMOD. CONTRASEÑA\e[0m")
			color_Texto_MOD3=$(echo -e "\e[1;33mREGRESAR\e[0m")

			#EN INVERT:
				colorINVERT_Texto_MOD1=$(echo -e "\e[1;7;33mMOD. NOMBRE\e[0m")
				colorINVERT_Texto_MOD2=$(echo -e "\e[1;7;33mINGRESAR CONTRASEÑA\e[0m")
				colorINVERT_Texto_MOD3=$(echo -e "\e[1;7;33mREGRESAR\e[0m")
			#EN DIM:
				colorDIM_Texto_MOD1=$(echo -e "\e[1;2;33mMOD. NOMBRE\e[0m")
				colorDIM_Texto_MOD2=$(echo -e "\e[1;2;33mINGRESAR CONTRASEÑA\e[0m")
				colorDIM_Texto_MOD3=$(echo -e "\e[1;2;33mREGRESAR\e[0m")

		#-----CODIGOS DE OPCION MODIFICAR
				color_Opcion_MOD1=$(echo -e "\e[1;3;33msystem.change.nameaccount      \e[0m")
				color_Opcion_MOD2=$(echo -e "\e[1;3;33msystem.change.passaccount      \e[0m")
				color_Opcion_MOD3=$(echo -e "\e[1;3;33msystem.return.tologin        \e[0m")

			#EN INVERT: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorINVERT_Opcion_MOD1=$(echo -e "\e[1;7;3msystem.change.nameaccount      \e[0m")
				colorINVERT_Opcion_MOD2=$(echo -e "\e[1;7;3msystem.change.passaccount      \e[0m")
				colorINVERT_Opcion_MOD3=$(echo -e "\e[1;7;3msystem.return.tologin          \e[0m")

			#EN DIM: SON PARA LAS ANIMACIONES O PARA VER LA SELECCION
				colorDIM_Opcion_MOD1=$(echo -e "\e[1;2;3;33msystem.change.nameaccount      \e[0m")
				colorDIM_Opcion_MOD2=$(echo -e "\e[1;2;3;33msystem.change.passaccount      \e[0m")
				colorDIM_Opcion_MOD3=$(echo -e "\e[1;2;3;33msystem.return.tologin          \e[0m")



		#------------------------------------------------------------------------------------------------------------------------
	#}

	#============================================================================================================================================================

	# OPCIONES VISTAS DE LOS MENUES {

		system_LineaVISTAOP_SYS=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_RED]---------------------SISTEMA $color_CirculoRED \e[0m")
		system_LineaVISTAOP_SYS1=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_RED $colorDIM_Opcion_SYS1\e[0m")

		system_LineaVISTAOP_MP=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_YELL]--------------MENÚ PRINCIPAL $color_CirculoYELL \e[0m")
		system_LineaVISTAOP_MP1=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP1\e[0m")
		system_LineaVISTAOP_MP2=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP2\e[0m")
		system_LineaVISTAOP_MP3=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP3\e[0m")
		system_LineaVISTAOP_MP4=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP4\e[0m")
		system_LineaVISTAOP_MP5=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP5\e[0m")
		system_LineaVISTAOP_MP6=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_YELL $colorDIM_CodigoOP_MP6\e[0m")


		system_LineaVISTAOP_HCK=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_CYAN]---------------------HACKNET $color_CirculoCYAN \e[0m")



		system_LineaVISTAOP_IS=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_CYAN]------------INICIO DE SESIÓN $color_CirculoCYAN \e[0m")
		system_LineaVISTAOP_IS1=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS1\e[0m") #Seleccion del SUJETO 001
		system_LineaVISTAOP_IS2=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS2\e[0m") #Seleccion del SUJETO 002
		system_LineaVISTAOP_IS3=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS3\e[0m") #Seleccion del SUJETO 003
		system_LineaVISTAOP_IS4=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS4\e[0m") #Modificar un User
		system_LineaVISTAOP_IS5=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS5\e[0m") #Elimina un User
		system_LineaVISTAOP_IS6=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS6\e[0m") #Modifica Nombre
		system_LineaVISTAOP_IS7=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_OpcionOP_IS7\e[0m") #Modifica Pass
		# Tambien se hace uso del comando system_LineaVISTAOP_SYS1, simplemente por recurrencia de codigo inceseario


		system_LineaVISTAOP_REG=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_CYAN]-----------------REGISTRARSE $color_CirculoCYAN \e[0m")
		system_LineaVISTAOP_REG1=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_Codigo_REG1\e[0m")
		system_LineaVISTAOP_REG2=$(echo -e "\e[1m |$color_FlechaABAJO_LIGHT_CYAN $colorDIM_Codigo_REG2\e[0m")


		system_LineaVISTAOP_HIS=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_CYAN]--------------------HISTORIA $color_CirculoCYAN \e[0m")


		system_LineaVISTAOP_CRE=$(echo -e "\e[1m [$color_FlechaABAJO_FULL_CYAN]--------------------CRÉDITOS $color_CirculoCYAN \e[0m")

	#}

	#==================================================================================================================================
#}

#==================================================================================================================================

# ANIMACIONES { 
	function animacion_MenuPrincipal {

		MenuPrincipal
	}

	function animacion_ModificarSujeto {
		ModificarSujeto
	}

	function animacion_JugarHacknet {
		JugarHacknet
	}

	function animacion_Login {
		Login #llama a la función Login

	}

	function animacion_Register {
		Register
	}

	function animacion_History {
		echo "asd"
	}

	function animacion_Credits {
		Credits
	}
#}

#==================================================================================================================================

# METODOS FUNCIONALES {

	function JugarHacknet {
		animacion_MenuPrincipal
	}

	function ModificarSujeto {
		clear
		cant_CharTX=$(echo "$system_SujetoNomLogeado" | wc -c)
		color_PromptSujetoRED=$(echo -e "\e[1;5;31m|>\e[0m")
		system_IndicadorPantalla=$(echo -e "\e[1;37;46mMODIFICAR SUJETO                                                    | ▁  | ▢  |  X  |\e[0m")	
		system_LineaVISTAOP1=$(echo -e "\e[7m Modifique su cuenta con frecuencia\e[0m")
		system_LineaVISTAOP2=$(echo -e "\e[7m  así los AGENTES no le pueda      \e[0m")
		system_LineaVISTAOP3=$(echo -e "\e[7m  encontrar con mas facilidad, ya  \e[0m")
		system_LineaVISTAOP4=$(echo -e "\e[7m  que si sus CREDENCIALES varìan   \e[0m")
		system_LineaVISTAOP5=$(echo -e "\e[7m  en el SISTEMA, será mas dificil  \e[0m")
		system_LineaVISTAOP6=$(echo -e "\e[7m  de ENCONTRARLO a usted.          \e[0m")

		echo "$color_BarraSuperior1"
		echo "$color_BarraSuperior2$system_IndicadorPantalla"
		echo "$color_BarraSuperior3"
		echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
		echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
		echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
		echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
		echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
		echo "|$system_LineaVISTAOP6||                $color_Titulo6                  |"
		echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
		echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
		echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
		echo "|$system_LineaVISTAOP_HCK||       $color_BarraSuperiorTitulo2         |"
		echo "|$system_LineaVISTAOP_IS||       $color_BarraSuperiorTitulo3         |"
		echo "|$system_LineaVISTAOP_IS6||       | $color_MargenSuperiorTexto |         |"
		case $modNom in
			0)
				echo "|$system_LineaVISTAOP_IS7||       |  |> [ $color_Texto_MOD1          |> |    $color_Opcion_MOD1 | |         |"
			;;
			1)
				echo "|$system_LineaVISTAOP_IS7||       |  |> [ $colorINVERT_Texto_MOD1          |> |    $color_Opcion_MOD1 | |         |"
			;;	
			2)
		    	echo "|$system_LineaVISTAOP_IS7||       |  |> [ $colorDIM_Texto_MOD1          |> |    $color_Opcion_MOD1 | |         |"
			;;
		esac		
		echo "|$system_LineaVISTAOP_REG||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_HIS||       | $color_MargenSuperiorTexto |         |"
		case $modPass in
			0)
				echo "|$system_LineaVISTAOP_CRE||       |  |> [ $color_Texto_MOD2      |> |    $color_Opcion_MOD2 | |         |"
			;;
			1) 
				echo "|$system_LineaVISTAOP_CRE||       |  |> [ $colorINVERT_Texto_MOD2      |> |    $color_Opcion_MOD2 | |         |"
			;;
			2)
				echo "|$system_LineaVISTAOP_CRE||       |  |> [ $colorDIM_Texto_MOD2      |> |    $color_Opcion_MOD2 | |         |"
			;;
		esac		
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [                      |> |                                    | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [                      |> |                                    | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [  $color_Texto_MOD3            |> |      $color_Opcion_MOD3 | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [  $color_Texto_REG3    |> |     $color_Opcion_SYS1| |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
		echo "|                                   ||                                                                                        |"
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		case $system_SujetoNomLogeado in
			0)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				echo "|$color_SujetoLogeadoL2||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			;;
			*)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				case $cant_CharTX in
					4)
						echo "|$color_SujetoLogeadoL3$color_EspNullC28||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					5)
						echo "|$color_SujetoLogeadoL3$color_EspNullC27||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					6)
						echo "|$color_SujetoLogeadoL3$color_EspNullC26||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					7)
						echo "|$color_SujetoLogeadoL3$color_EspNullC25||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					8)
						echo "|$color_SujetoLogeadoL3$color_EspNullC24||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					9)
						echo "|$color_SujetoLogeadoL3$color_EspNullC23||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					10)
						echo "|$color_SujetoLogeadoL3$color_EspNullC22||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					11)
						echo "|$color_SujetoLogeadoL3$color_EspNullC21||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					12)
						echo "|$color_SujetoLogeadoL3$color_EspNullC20||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					13)
						echo "|$color_SujetoLogeadoL3$color_EspNullC19||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
				esac #End < $cant_CharTX in >
			;;
		esac #End < $system_SujetoNomLogeado in >

		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		case $casePrompt in
			0)
				read -p "|                                   ||$color_PromptSujetoRED" opModifica
			;;
			1)
				case $accionModi in
					0) #Para modificar nombre
						aux_prompt=$(echo -e "\e[1;5;31m|>\e[0m \e[1;33m  Nuevo nombre: \e[0m")
						read -p "|                                   ||$aux_prompt" modiNombre
					;;	
					1) #Para modificar la contraseña
						aux_prompt1=$(echo -e "\e[1;5;31m|>\e[0m \e[1;33m  Nueva contraseña: \e[0m")
						read -p "|                                   ||$aux_prompt1" modiPass
				esac #End < $accionModi in >
			;;
		esac
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		
		case $accion in #Valor por defecto 0 que viene de Funcion Login
			0) #Corresponde a ingresar una de las Opciones de Modificacion
				case  $opModifica in 
					system.change.nameaccount)
						modNom=1 #Para indicar que se selecciono modificar nombre
						accion=1 #Para cambiar el contexto de la funcion a modificar nombre
						casePrompt=1 #Para cambiar lo que se le pide al Sujeto
						accionModi=0 #Para pedirle que cambie el nombre
						ModificarSujeto #Vuelve a la Funcion
					;;
					system.change.passaccount)
						modPass=1 #Para indicar que se selecciono modificar contraseña
						accion=2 #Para cambiar el contexto de la funcion a modificar contraseña
						casePrompt=1 #Para cambiar lo que se le pide al Sujeto
						accionModi=1 #Para pedirle que cambie la contraseña
						ModificarSujeto #Vuelve a la Funcion
					;;
					system.return.tologin)
						clear
						animacion_Login
					;;
					system.goto.menuprincipal)
						clear
						animacion_MenuPrincipal
					;;
					*)
					;;
				esac
			;;
			1) #Corresponde a ingresar el nuevo nombre para el Sujeto
				cd /home/*/.HACKNET/.Users/
				mv $system_SujetoNomLogeado $modiNombre
				system_SujetoNomLogeado="$modiNombre"
				cd /home/*/.HACKNET/
				rm .SUJETOS.TXT
				aux_seVerifico=0
				modNom=0
				modPass=0
				casePrompt=0
				accion=0
				accionModi=0
				ModificarSujeto
			;;
			2) #Corresponde a ingresar la nueva contraseña para el Sujeto
				cd /home/*/.HACKNET/.Users/
				datosSujetoLogeado=$(tail -5 $system_SujetoNomLogeado)
				touch ."$system_SujetoNomLogeado"_aux
				echo "$datosSujetoLogeado" > ."$system_SujetoNomLogeado"_aux
				echo "$modiPass" > "$system_SujetoNomLogeado"
				echo "$datosSujetoLogeado" >> "$system_SujetoNomLogeado"
				rm ?"$datosSujetoLogeado"_*
				modNom=0
				modPass=0
				casePrompt=0
				accion=0
				accionModi=0
				ModificarSujeto
			;;
		esac		
	
	} #Fin de ModificarSujeto

	function Login {
		clear
		if test $aux_seVerifico -ne 1 #Esta variable se instancia en MenuPrincial para evitar un bucle de funciones
			then
				aux_seVerifico=`expr $aux_seVerifico + 1`
				cd /home/*/.HACKNET/.Users/ # Se accede a la carpeta en donde se encuentran todos los SUJETOS
				aux_cantArchivos=$(ls | wc -l)
				
				if test -e .SUJETOS.txt 
					then
						rm .SUJETOS.txt #Ya se probo redireccionar un valor nulo al texto, en vez de borrarlo y crearlo luego nuevamente, pero deja un espacio en la linea 0 (el redireccionamiento ">")					
				fi 
				
				ls >> .SUJETOS.txt #Una vez verificada la existencia, se almacena alli en el txt todos los usuarios existentes
				mv /home/*/.HACKNET/.Users/.SUJETOS.txt /home/*/.HACKNET/
				cd /home/*/.HACKNET/
				#Se crean variables auxiliares para sustituir el texto
				TX_0="SUJETO_GEC566"
				TX_1="SUJETO_DFY441"
				TX_2="SUJETO_DA0014"
				cont_aux=0

				case $aux_cantArchivos in
					1)
						while read line
							do
								TX_0=$(echo -e "$line\n") #Se almacena en la VAR_AUX0 el valor de la linea 0 del archivo	
								PX_0=$(head -1 .Users/$TX_0)					
							done < .SUJETOS.txt
					;;
					2)
						while read line 
							do
								case $cont_aux in #Se verifica en cada caso posible el valor de la VAR aux
									0)
										TX_0=$(echo -e "$line\n") #Se almacena en la VAR_AUX0 el valor de la linea 0 del archivo
										PX_0=$(head -1 .Users/$TX_0)
									;;
									1)			
										TX_1=$(echo -e "$line\n") #Se almacena en la VAR_AUX1 el valor de la linea 1 del archiv
										PX_1=$(head -1 .Users/$TX_1)
									;;
								esac #End < $cont_aux in >

								cont_aux=`expr $cont_aux + 1`
							done < .SUJETOS.txt	
					;;
					3)
						while read line
							do
								case $cont_aux in #Se verifica en cada caso posible el valor de la VAR aux
									0)
										TX_0=$(echo -e "$line\n") #Se almacena en la VAR_AUX0 el valor de la linea 0 del archivo
										PX_0=$(head -1 .Users/$TX_0)
									;;
									1)
										TX_1=$(echo -e "$line\n") #Se almacena en la VAR_AUX1 el valor de la linea 1 del archiv
										PX_1=$(head -1 .Users/$TX_1)
									;;
									2)			
										TX_2=$(echo -e "$line\n") #Se almacena en la VAR_AUX1 el valor de la linea 1 del archiv
										PX_2=$(head -1 .Users/$TX_2)
									;;
								esac #End < $cont_aux in >

								cont_aux=`expr $cont_aux + 1`
							done < .SUJETOS.txt
					;;
				esac #End < $aux_cantArchivos in >

				#COLORES{
					#En estas tres variables se almacena el nombre que hay en cada linea del archivo que contiente los nombres
					# de los SUJETOS mas la modificacion de atributos de dicho texto
					color_Texto_IS1=$(echo -e "\e[1;33m$TX_0\e[0m") #Se almacena el nombre de un Sujeto en la pos 0
					color_Texto_IS2=$(echo -e "\e[1;33m$TX_1\e[0m") #Se almacena el nombre de un Sujeto en la pos 1
					color_Texto_IS3=$(echo -e "\e[1;33m$TX_2\e[0m") #Se almacena el nombre de un Sujeto en la pos 2
					color_Texto_IS4=$(echo -e "\e[1;33mMODIFICAR\e[0m")
					color_Texto_IS5=$(echo -e "\e[1;33mELIMINAR\e[0m")

					#EN INVERT:
						colorINVERT_Texto_IS1=$(echo -e "\e[1;7;33m$TX_0\e[0m")
						colorINVERT_Texto_IS2=$(echo -e "\e[1;7;33m$TX_1\e[0m")
						colorINVERT_Texto_IS3=$(echo -e "\e[1;7;33m$TX_2\e[0m")
						colorINVERT_Texto_IS4=$(echo -e "\e[1;7;33mMODIFICAR\e[0m")
						colorINVERT_Texto_IS5=$(echo -e "\e[1;7;33mELIMINAR\e[0m")
					#EN DIM:
						colorDIM_Texto_IS1=$(echo -e "\e[1;2;33m$TX_0\e[0m")
						colorDIM_Texto_IS2=$(echo -e "\e[1;2;33m$TX_1\e[0m")
						colorDIM_Texto_IS3=$(echo -e "\e[1;2;33m$TX_2\e[0m")
						colorDIM_Texto_IS4=$(echo -e "\e[1;2;33mMODIFICAR\e[0m")
						colorDIM_Texto_IS5=$(echo -e "\e[1;2;33mELIMINAR\e[0m")

					#-----CODIGOS DE OPCION INICIAR SESION
					color_Opcion_IS1=$(echo -e "\e[1;3;33msystem.selectaccount:$TX_0\e[0m") #comando para hacer seleccion de un SUJETO en POS 0
					color_Opcion_IS2=$(echo -e "\e[1;3;33msystem.selectaccount:$TX_1\e[0m") #comando para hacer seleccion de un SUJETO en POS 1
					color_Opcion_IS3=$(echo -e "\e[1;3;33msystem.selectaccount:$TX_2\e[0m") #comando para hacer seleccion de un SUJETO en POS 2
					color_Opcion_IS4=$(echo -e "\e[1;3;33msystem.modify.accountselect\e[0m")
					color_Opcion_IS5=$(echo -e "\e[1;3;33msystem.remove.accountselect\e[0m")
						
					#EN INVERT:
						colorINVERT_Opcion_INS1=$(echo -e "\e[1;7;3msystem.selectaccount:$TX_0\e[0m")
						colorINVERT_Opcion_INS2=$(echo -e "\e[1;7;3msystem.selectaccount:$TX_1\e[0m")
						colorINVERT_Opcion_INS3=$(echo -e "\e[1;7;3msystem.selectaccount:$TX_2\e[0m")

					#EN DIM:
						colorDIM_Opcion_INS1=$(echo -e "\e[1;2;3msystem.selectaccount:$TX_0\e[0m")
						colorDIM_Opcion_INS2=$(echo -e "\e[1;2;3msystem.selectaccount:$TX_0\e[0m")
						colorDIM_Opcion_INS3=$(echo -e "\e[1;2;3msystem.selectaccount:$TX_0\e[0m")
						colorDIM_Opcion_IS4=$(echo -e "\e[1;2;33msystem.modify.accountselect\e[0m")
						colorDIM_Opcion_IS5=$(echo -e "\e[1;2;33msystem.remove.accountselect\e[0m")
				#}			
		fi #End < $aux_seVerifico -ne 1 >

		case $system_IDSujetoLogeado in
			0) #TX_0 Logeado
				yaLogeado=1
				system_SujetoNomLogeado="$TX_0"
			;;
			1) #TX_1 Logeado
				yaLogeado=1
				system_SujetoNomLogeado="$TX_1"
			;;
			2) #TX_2 Logeado
				yaLogeado=1
				system_SujetoNomLogeado="$TX_2"
			;;
			3) #Ninguno Logeado
				yaLogeado=0
				system_SujetoNomLogeado=0
			;;
		esac #End < $system_IDSujetoLogeado in >

		cant_CharTX=$(echo "$system_SujetoNomLogeado" | wc -c)
		cant_CharTX0=$(echo "$TX_0" | wc -c)
		cant_CharTX1=$(echo "$TX_1" | wc -c)
		cant_CharTX2=$(echo "$TX_2" | wc -c)

		
		echo "  "
		echo "SIN MODIFICAR"
		echo "cant_CharTX: $cant_CharTX"
		echo "cant_CharTX0: $cant_CharTX0"
		echo "cant_CharTX1: $cant_CharTX1"
		echo "cant_CharTX2: $cant_CharTX2"

		cant_CharTX=`expr $cant_CharTX - 1`
		cant_CharTX0=`expr $cant_CharTX0 - 1`
		cant_CharTX1=`expr $cant_CharTX1 - 1`
		cant_CharTX2=`expr $cant_CharTX2 - 1`

		echo "  "
		echo "MODIFICADO"
		echo "cant_CharTX: $cant_CharTX"
		echo "cant_CharTX0: $cant_CharTX0"
		echo "cant_CharTX1: $cant_CharTX1"
		echo "cant_CharTX2: $cant_CharTX2"
		echo " " 

		
		color_PromptSujeto=$(echo -e "\e[1;5;31m|>\e[0m")
		system_IndicadorPantalla=$(echo -e "\e[1;37;46mLOGIN                                                               | ▁  | ▢  |  X  |\e[0m")
		system_LineaVISTAOP1=$(echo -e "\e[7m En esta sección se deberá escoger \e[0m")
		system_LineaVISTAOP2=$(echo -e "\e[7m  un SUJETO para poder modificar   \e[0m")
		system_LineaVISTAOP3=$(echo -e "\e[7m  sus ATRIBUTOS o si bien desea,   \e[0m")
		system_LineaVISTAOP4=$(echo -e "\e[7m  este podrá ingresar al SISTEMA   \e[0m")
		system_LineaVISTAOP5=$(echo -e "\e[7m  para luego iniciar la HISTORIA.  \e[0m")	
		color_SujetoLogeadoL3=$(echo -e "\e[1;7;31;49m ID: $system_SujetoNomLogeado\e[0m")



		echo "$color_BarraSuperior1"
		echo "$color_BarraSuperior2$system_IndicadorPantalla"
		echo "$color_BarraSuperior3"
		echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
		echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
		echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
		echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
		echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
		echo -e "|\e[7m                                   \e[0m||                $color_Titulo6                  |"
		echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
		echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
		echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
		echo "|$system_LineaVISTAOP_HCK||       $color_BarraSuperiorTitulo2         |"
		echo "|$system_LineaVISTAOP_IS||       $color_BarraSuperiorTitulo3         |"
		echo "|$system_LineaVISTAOP_IS1||       | $color_MargenSuperiorTexto |         |"

		#CANT CHAR TX0 {
			case $cant_CharTX0 in
				4)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1                 |> | $color_Opcion_IS1          | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1                 |> | $color_Opcion_IS1          | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				5)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1                |> | $color_Opcion_IS1         | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1                |> | $color_Opcion_IS1         | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				6)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1               |> | $color_Opcion_IS1        | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1               |> | $color_Opcion_IS1        | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				7)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1              |> | $color_Opcion_IS1       | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1              |> | $color_Opcion_IS1       | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				8)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1             |> | $color_Opcion_IS1      | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1             |> | $color_Opcion_IS1      | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				9)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1            |> | $color_Opcion_IS1     | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1            |> | $color_Opcion_IS1     | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				10)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1           |> | $color_Opcion_IS1    | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1           |> | $color_Opcion_IS1    | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				11)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1          |> | $color_Opcion_IS1   | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1          |> | $color_Opcion_IS1   | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				12)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1         |> | $color_Opcion_IS1  | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1         |> | $color_Opcion_IS1  | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
				13)
					case $sujetoSelect in
						0) #False
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $color_Texto_IS1        |> | $color_Opcion_IS1 | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS2||       |  |> [ $colorINVERT_Texto_IS1        |> | $color_Opcion_IS1 | |         |"
						;;
					esac #End < $sujetoSelect in >
				;;
			esac #End < $cant_CharTX0 in >	
		#}

		echo "|$system_LineaVISTAOP_IS3||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_IS4||       | $color_MargenSuperiorTexto |         |"

		#CANT CHAR TX1 {
			case $cant_CharTX1 in
				4)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2                 |> | $color_Opcion_IS2          | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2                 |> | $color_Opcion_IS2          | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				5)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2                |> | $color_Opcion_IS2         | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2                |> | $color_Opcion_IS2         | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				6)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2               |> | $color_Opcion_IS2        | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2               |> | $color_Opcion_IS2        | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				7)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2              |> | $color_Opcion_IS2       | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2              |> | $color_Opcion_IS2       | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				8)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2             |> | $color_Opcion_IS2      | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2             |> | $color_Opcion_IS2      | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				9)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2            |> | $color_Opcion_IS2     | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2            |> | $color_Opcion_IS2     | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				10)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2           |> | $color_Opcion_IS2    | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2           |> | $color_Opcion_IS2    | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				11)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2          |> | $color_Opcion_IS2   | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2          |> | $color_Opcion_IS2   | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				12)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2         |> | $color_Opcion_IS2  | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2         |> | $color_Opcion_IS2  | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				13)
					case $sujetoSelect1 in
						0) #False
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $color_Texto_IS2        |> | $color_Opcion_IS2 | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_IS5||       |  |> [ $colorINVERT_Texto_IS2        |> | $color_Opcion_IS2 | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
			esac #End < $cant_CharTX1 in >	
		#}		

		echo "|$system_LineaVISTAOP_IS6||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_IS7||       | $color_MargenSuperiorTexto |         |"

		#CANT CHAR TX2 {
			case $cant_CharTX2 in
				4)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3                 |> | $color_Opcion_IS3          | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3                 |> | $colorINVERT_Opcion_INS3          | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				5)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3                |> | $color_Opcion_IS3         | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3                |> | $colorINVERT_Opcion_INS3         | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				6)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3               |> | $color_Opcion_IS3        | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3               |> | $colorINVERT_Opcion_INS3        | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				7)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3              |> | $color_Opcion_IS3       | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3              |> | $colorINVERT_Opcion_INS3       | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				8)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3             |> | $color_Opcion_IS3      | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3             |> | $colorINVERT_Opcion_INS3      | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				9)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3            |> | $color_Opcion_IS3     | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3            |> | $colorINVERT_Opcion_INS3     | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				10)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3           |> | $color_Opcion_IS3    | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3           |> | $colorINVERT_Opcion_INS3    | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				11)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3          |> | $color_Opcion_IS3   | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3          |> | $colorINVERT_Opcion_INS3   | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				12)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3         |> | $color_Opcion_IS3  | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3         |> | $colorINVERT_Opcion_INS3  | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
				13)
					case $sujetoSelect2 in
						0) #False
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $color_Texto_IS3        |> | $color_Opcion_IS3 | |         |"
						;;
						1) #True
							echo "|$system_LineaVISTAOP_REG||       |  |> [ $colorINVERT_Texto_IS3        |> | $colorINVERT_Opcion_INS3 | |         |"
						;;
					esac #End < $sujetoSelect1 in >
				;;
			esac #End < $cant_CharTX2 in >	
		#}	

		echo "|$system_LineaVISTAOP_HIS||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_CRE||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [                      |> |                                    | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"

		case $loginSelect in
			0)
				echo "|                                   ||       |  |> [  $colorDIM_Texto_IS4           |> |    $colorDIM_Opcion_IS4     | |         |"
				echo "|                                   ||       | $color_MargenInferiorTexto |         |"
				echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
				echo "|                                   ||       |  |> [  $colorDIM_Texto_IS5            |> |    $colorDIM_Opcion_IS5     | |         |"
			;;
			1)
				echo "|                                   ||       |  |> [  $color_Texto_IS4           |> |    $color_Opcion_IS4     | |         |"
				echo "|                                   ||       | $color_MargenInferiorTexto |         |"
				echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
				echo "|                                   ||       |  |> [  $color_Texto_IS5            |> |    $color_Opcion_IS5     | |         |"		
			;;
		esac #End < $loginSelect in >	

		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [  $color_Texto_REG3    |> |     $color_Opcion_SYS1| |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
		echo "|                                   ||                                                                                        |"
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		case $system_SujetoNomLogeado in
			0)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				echo "|$color_SujetoLogeadoL2||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			;;
			*)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				case $cant_CharTX in
					4)
						echo "|$color_SujetoLogeadoL3$color_EspNullC28||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					5)
						echo "|$color_SujetoLogeadoL3$color_EspNullC27||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					6)
						echo "|$color_SujetoLogeadoL3$color_EspNullC26||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					7)
						echo "|$color_SujetoLogeadoL3$color_EspNullC25||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					8)
						echo "|$color_SujetoLogeadoL3$color_EspNullC24||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					9)
						echo "|$color_SujetoLogeadoL3$color_EspNullC23||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					10)
						echo "|$color_SujetoLogeadoL3$color_EspNullC22||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					11)
						echo "|$color_SujetoLogeadoL3$color_EspNullC21||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					12)
						echo "|$color_SujetoLogeadoL3$color_EspNullC20||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					13)
						echo "|$color_SujetoLogeadoL3$color_EspNullC19||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
				esac #End < $cant_CharTX in >
			;;
		esac #End < $system_SujetoNomLogeado in >

		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"

		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		case $casoPrompt in
			0)
				read -p "|                                   ||$color_PromptSujetoRED" opLogin
			;;
			1) #FALTA UN IF QUE SI ES IGUAL A LOS SUJTOS POR DEFECTO QUE DE ERROR, LOS SUJETOS POR DEFECTO SON DEL SISTEMA
				case $opLogin in
					system.selectaccount:$TX_0)
						aux_prompt=$(echo -e "\e[1;3;5;33m$TX_0\e[0m \e[1;31m  Contraseña:\e[0m")
						read -p "|                                   ||$aux_prompt" opPassLog
					;;	
					system.selectaccount:$TX_1)
						aux_prompt1=$(echo -e "\e[1;3;5;33m$TX_1\e[0m \e[1;31m  Contraseña:\e[0m")
						read -p "|                                   ||$aux_prompt1" opPassLog
					;;			
					system.selectaccount:$TX_2)
						aux_prompt2=$(echo -e "\e[1;3;5;33m$TX_2\e[0m \e[1;31m  Contraseña:\e[0m")
						read -p "|                                   ||$aux_prompt2" opPassLog
					;;							
				esac #End < $opLogin in >
			;;
		esac #End < $casoPrompt in > 
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"

		case $aux_verificaEstadoLogin in
			0)
				case $opLogin in
					system.selectaccount:$TX_0)
						case $yaLogeado in
							0)
								sujetoSelect=1
								aux_verificaEstadoLogin=1
								casoPrompt=1
								sujeto=0
								Login
							;;
							1)
								sujetoSelect=1
								aux_verificaEstadoLogin=2
								casoPrompt=0
								loginSelect=1
								Login
							;;
						esac #End < $yaLogeado in >
					;;	
					system.selectaccount:$TX_1)
						case $yaLogeado in
							0)
								sujetoSelect1=1
								aux_verificaEstadoLogin=1
								casoPrompt=1
								sujeto=1
								Login
							;;
							1)
								sujetoSelect1=1
								aux_verificaEstadoLogin=2
								casoPrompt=0
								loginSelect=1
								Login
							;;
						esac #End < $yaLogeado in >
					;;
					system.selectaccount:$TX_2)
						case $yaLogeado in
							0)
								sujetoSelect2=1
								aux_verificaEstadoLogin=1
								casoPrompt=1
								sujeto=2
								Login
							;;
							1)
								sujetoSelect2=1
								aux_verificaEstadoLogin=2
								casoPrompt=0
								loginSelect=1
								Login
							;;
						esac #End < $yaLogeado in >
					;;
					system.goto.menuprincipal)
						clear
						animacion_MenuPrincipal
					;;
					*)
						clear
						animacion_Login
					;;
				esac #End < $opLogin in > 
			;;
			1)
				case $sujeto in
					0)
						case $opPassLog in
							exit)
								casoPrompt=0					
								sujetoSelect=0
								aux_verificaEstadoLogin=0
								Login					
							;;			
							*)
								if test $opPassLog == $PX_0
									then 
										system_IDSujetoLogeado=0
										system_SujetoNomLogeado=$TX_0
										casoPrompt=0
										loginSelect=1
										aux_verificaEstadoLogin=2
										Login
									else
										Login

								fi #End < $opPassLog == $PX_0 >
							;;
						esac #End < $opPassLog in >
					;;
					1)
						case $opPassLog in
							exit)
								casoPrompt=0
								sujetoSelect1=0
								aux_verificaEstadoLogin=0
								Login				
							;;
							*)
								if test $opPassLog == $PX_1
									then 
										system_IDSujetoLogeado=1
										system_SujetoNomLogeado=$TX_1
										casoPrompt=0
										loginSelect=1
										aux_verificaEstadoLogin=2
										Login
									else
										Login
								fi #End < $opPassLog == $PX_1 >
							;;
						esac #End < $opPassLog in >			
					;;
					2)
						case $opPassLog in
							exit)
								casoPrompt=0
								sujetoSelect2=0
								aux_verificaEstadoLogin=0
								Login				
							;;
							*)
								if test $opPassLog == $PX_2
									then 
										system_IDSujetoLogeado=2
										system_SujetoNomLogeado=$TX_2
										casoPrompt=2
										loginSelect=1
										aux_verificaEstadoLogin=2
										Login
									else
										Login
								fi #End < $opPassLog == $PX_2 >
							;;
						esac #End < $opPassLog in >
					;;
				esac #End < $sujeto in >
			;;
			2)
				case $opLogin in
					system.remove.accountselect)
						case $system_IDSujetoLogeado in
							0)
								cd /home/*/.HACKNET/.Users/
								rm $TX_0
								cd /home/*/.HACKNET/.Desktops
								rm -r .Desktop_"$TX_0"
								cd /home/*/.HACKNET/
								rm .SUJETOS.txt
								aux_seVerifico=0
								TX_0="SUJETO_GEC566"
								casoPrompt=0
								system_SujetoNomLogeado=0
								system_IDSujetoLogeado=3
								loginSelect=0
								sujetoSelect=0
								animacion_MenuPrincipal
							;;
							1)
								cd /home/*/.HACKNET/.Users/
								rm $TX_1
								cd /home/*/.HACKNET/.Desktops
								rm -r .Desktop_"$TX_1"
								cd /home/*/.HACKNET/
								rm .SUJETOS.txt
								aux_seVerifico=0
								TX_1="SUJETO_DFY441"
								casoPrompt=0
								system_SujetoNomLogeado=0
								system_IDSujetoLogeado=3
								loginSelect=0
								sujetoSelect1=0
								Login
							;;
							2)
								cd /home/*/.HACKNET/.Users/
								rm $TX_2
								cd /home/*/.HACKNET/.Desktops
								rm -r .Desktop_"$TX_2"
								cd /home/*/.HACKNET/
								rm .SUJETOS.txt
								aux_seVerifico=0
								TX_2="SUJETO_DA0014"
								casoPrompt=0
								system_SujetoNomLogeado=0
								system_IDSujetoLogeado=3
								loginSelect=0
								sujetoSelect2=0
								Login
							;;
						esac	 
					;;
					system.modify.accountselect)
						case $system_IDSujetoLogeado in
							0)
								modifSujeto=0
								modNom=0
								modPass=0
								casePrompt=0
								accion=0
								accionModi=0
								animacion_ModificarSujeto
							;;
							1)
								modifSujeto=1
								modNom=0
								modPass=0
								casePrompt=0
								accion=0
								accionModi=0
								animacion_ModificarSujeto
							;;
							2)
								modifSujeto=2
								modNom=0
								modPass=0
								casePrompt=0
								accion=0
								accionModi=0
								animacion_ModificarSujeto
							;;
						esac
					;;
					system.goto.menuprincipal)
						clear
						animacion_MenuPrincipal
					;;
					*)
						clear
						animacion_Login
					;;
				esac #End < $opLogin in >
			;;
		esac #End < $aux_verificaEstadoLogin in >		

	} #End function < Login >

	function Register {
		clear
		cont_register=0 
		system_IndicadorPantalla=$(echo -e "\e[1;37;46mREGISTRO                                                            | ▁  | ▢  |  X  |\e[0m")
		system_LineaVISTAOP1=$(echo -e "\e[7m EL SUJETO deberá ingresar un      \e[0m")
		system_LineaVISTAOP2=$(echo -e "\e[7m  NOMBRE y una CONTRASEÑA para     \e[0m")
		system_LineaVISTAOP3=$(echo -e "\e[7m  poder así crear una nueva        \e[0m")
		system_LineaVISTAOP4=$(echo -e "\e[7m  CUENTA para almacenar el avance  \e[0m")
		system_LineaVISTAOP5=$(echo -e "\e[7m  que logre ese JUGADOR.           \e[0m")

		while [ $cont_register -lt 2 ]
		do	
			color_PromptSujetoRED=$(echo -e "\e[1;5;31m|>\e[0m")
			clear
			echo "$color_BarraSuperior1"
			echo "$color_BarraSuperior2$system_IndicadorPantalla"
			echo "$color_BarraSuperior3"
			echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
			echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
			echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
			echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
			echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
			echo -e "|\e[7m                                   \e[0m||                $color_Titulo6                  |"
			echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
			echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
			echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
			echo "|$system_LineaVISTAOP_IS||       $color_BarraSuperiorTitulo2         |"
			echo "|$system_LineaVISTAOP_REG||       $color_BarraSuperiorTitulo3         |"
			echo "|$system_LineaVISTAOP_REG1||       | $color_MargenSuperiorTexto |         |"

			case $cont_register in
				0)
					echo "|$system_LineaVISTAOP_REG2||       |  |> [ $colorINVERT_Texto_REG1      |> |      $color_Opcion_REG1       | |         |"
					echo "|$system_LineaVISTAOP_HIS||       | $color_MargenInferiorTexto |         |"
					echo "|$system_LineaVISTAOP_CRE||       | $color_MargenSuperiorTexto |         |"
           			echo "|                                   ||       |  |> [ $colorDIM_Texto_REG2  |> |      $colorDIM_OpcionM_REG2       | |         |"
				;;

				1)
					echo "|$system_LineaVISTAOP_REG2||       |  |> [ $colorDIM_Texto_REG1      |> |      $colorDIM_OpcionM_REG1       | |         |"
					echo "|$system_LineaVISTAOP_HIS||       | $color_MargenInferiorTexto |         |"
					echo "|$system_LineaVISTAOP_CRE||       | $color_MargenSuperiorTexto |         |"
					echo "|                                   ||       |  |> [ $colorINVERT_Texto_REG2  |> |      $color_Opcion_REG2       | |         |"
				;;
			esac #End < $cont_register in >
			
			echo "|                                   ||       | $color_MargenInferiorTexto |         |"
			echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
			echo "|                                   ||       |  |> [                      |> |                                    | |         |"
			echo "|                                   ||       | $color_MargenInferiorTexto |         |"
			echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
			echo "|                                   ||       |  |> [                      |> |                                    | |         |"
			echo "|                                   ||       | $color_MargenInferiorTexto |         |"
			echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
			echo "|                                   ||       |  |> [                      |> |                                    | |         |"
			echo "|                                   ||       | $color_MargenInferiorTexto |         |"
			echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
			echo "|                                   ||       |  |> [ $color_Texto_REG3     |> |     $color_Opcion_SYS1| |         |"
			echo "|                                   ||       | $color_MargenInferiorTexto |         |"
			echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
			echo "|                                   ||                                                                                        |"
			echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
			echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
			echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
			echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
			read -p "|                                   ||$color_PromptSujetoRED" opRegistrar                              
			echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
			case $opRegistrar in	
				system.add.nameaccount:)
					clear 
					if test $cont_register -eq 0 
						#El 0 indica que se le está pidiendo el Nombre, si el SUJETO pone ese comando y cont_register es 1, le da error
						then
							color_PromptSujetoRED=$(echo -e "\e[1;31m|>\e[1;3;31msystem.add.nameaccount:\e[0m") 
							clear
							echo "$color_BarraSuperior1"
							echo "$color_BarraSuperior2$system_IndicadorPantalla"
							echo "$color_BarraSuperior3"
							echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
							echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
							echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
							echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
							echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
							echo -e "|\e[7m                                   \e[0m||                $color_Titulo6                  |"
							echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
							echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
							echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
							echo "|$system_LineaVISTAOP_IS||       $color_BarraSuperiorTitulo2         |"
							echo "|$system_LineaVISTAOP_REG||       $color_BarraSuperiorTitulo3         |"
							echo "|$system_LineaVISTAOP_REG1||       | $color_MargenSuperiorTexto |         |"
							echo "|$system_LineaVISTAOP_REG2||       |  |> [ $colorINVERT_Texto_REG1      |> |      $color_Opcion_REG1       | |         |"
							echo "|$system_LineaVISTAOP_HIS||       | $color_MargenInferiorTexto |         |"
							echo "|$system_LineaVISTAOP_CRE||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [ $colorDIM_Texto_REG2  |> |      $colorDIM_OpcionM_REG2       | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [ $color_Texto_REG3     |> |     $color_Opcion_SYS1| |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
							echo "|                                   ||                                                                                        |"
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
							echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
							echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
							read -n12 -p "|                                   ||$color_PromptSujetoRED " Registrar_nom                                     
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
							CountCharNomReg=$(echo $Registrar_nom | wc -c)
							CountCharNomReg=`expr $CountCharNomReg - 1`
							if test $CountCharNomReg -ge 4
								then
									if test -e /home/*/.HACKNET/.Users/$Registrar_nom
										then
											Register
										else
											cont_register=`expr $cont_register + 1`
									fi
								else 
									Register
							fi #End <CountCharNomReg -ge 4>
							
					fi #End <$cont_register -eq 0>
				;;
				system.add.passaccount:)
					clear 
					if test $cont_register -eq 1
						then
							color_PromptSujetoRED=$(echo -e "\e[1;31m|>\e[1;3;31msystem.add.passaccount:\e[0m") 
							clear
							echo "$color_BarraSuperior1"
							echo "$color_BarraSuperior2$system_IndicadorPantalla"
							echo "$color_BarraSuperior3"
							echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
							echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
							echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
							echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
							echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
							echo -e "|\e[7m                                   \e[0m||                $color_Titulo6                  |"
							echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
							echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
							echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
							echo "|$system_LineaVISTAOP_IS||       $color_BarraSuperiorTitulo2         |"
							echo "|$system_LineaVISTAOP_REG||       $color_BarraSuperiorTitulo3         |"
							echo "|$system_LineaVISTAOP_REG1||       | $color_MargenSuperiorTexto |         |"
							echo "|$system_LineaVISTAOP_REG2||       |  |> [ $colorDIM_Texto_REG1     |> |      $colorDIM_OpcionM_REG1        | |         |"
							echo "|$system_LineaVISTAOP_HIS||       | $color_MargenInferiorTexto |         |"
							echo "|$system_LineaVISTAOP_CRE||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [ $colorINVERT_Texto_REG2 |> |      $color_Opcion_REG2        | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [                      |> |                                    | |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
							echo "|                                   ||       |  |> [ $color_Texto_REG3     |> |     $color_Opcion_SYS1| |         |"
							echo "|                                   ||       | $color_MargenInferiorTexto |         |"
							echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
							echo "|                                   ||                                                                                        |"
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
							echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
							echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
							read -p "|                                   ||$color_PromptSujetoRED " Registrar_pass                                     
							echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"

							cont_register=`expr $cont_register + 1`
						else 
							echo ""
					fi #End <$cont_register -eq 1>
				;;
				system.goto.menuprincipal)
					MenuPrincipal
				;;
			esac #End < $opRegistrar >
		done #End While < $cont_register -lt 2 >
		
		#Se manipulan los datos:
		if test  -e /home/*/.HACKNET/.Users/$Registrar_nom
			then
				#msj ERRORR
				Register #Vuelve, ya que ese nombre ya existe en el sistema
			else #En caso de que no exista:
				cd /home/*/.HACKNET/.Users/ #Viaja a la carpeta de los Usuarios
				touch $Registrar_nom #Se crea el Sujeto
				
				echo "$Registrar_pass" >> $Registrar_nom #Se almacena la contraseña del SUJETO
				echo "0,0" >> $Registrar_nom
				echo "108" >> $Registrar_nom
				echo "1" >> $Registrar_nom
				echo "0" >> $Registrar_nom
				echo "ID14_SUJETO0A" >> $Registrar_nom

				
				cd /home/*/.HACKNET/.Desktops/ #Se viaja al directorio con las partidas de los jugadores
				mkdir .Desktop_$Registrar_nom #Se crea el entorno del SUJETO
				cd /home/*/.HACKNET 
		fi #End existencia del Nombre $Registrar_nom
		MenuPrincipal

	} #End Function Registrar

	function Credits {
		animacion_MenuPrincipal
	} #End function < Credits >

	function confirma_EOF {
		EOF
	} #End function < confirma_EOF >

	function EOF {
		exit
	} #End function < EOF >

	function MenuPrincipal {
		clear
		cd /home/*/.HACKNET/.Users/
		cant_archivo=$(ls | wc -l) #Se cuenta la cantidad de Sujetos existentes en el Sistema
		cant_CharTX=$(echo "$system_SujetoNomLogeado" | wc -c) #Se cuenta la cantidad de Char que tiene el nombre del Sujeto que Inicio Sesion
		cant_CharTX=`expr $cant_CharTX - 1`		
		cd /home/*/.HACKNET/

		color_PromptSujetoRED=$(echo -e "\e[1;5;31m|>\e[0m")
		system_IndicadorPantalla=$(echo -e "\e[1;37;46mMENU PRINCIPAL                                                      | ▁  | ▢  |  X  |\e[0m")
		system_LineaVISTAOP1=$(echo -e "\e[7m SUJETO ya se encuentra en el      \e[0m")
		system_LineaVISTAOP2=$(echo -e "\e[7m  Menú Principal, por ende, usted  \e[0m")
		system_LineaVISTAOP3=$(echo -e "\e[7m  no puede hacer uso de los        \e[0m")
		system_LineaVISTAOP4=$(echo -e "\e[7m  COMÁNDOS/CÓDIGOS descriptivos    \e[0m")
		system_LineaVISTAOP5=$(echo -e "\e[7m  própios del SISTEMA              \e[0m")

		echo "$color_BarraSuperior1"
		echo "$color_BarraSuperior2$system_IndicadorPantalla"
		echo "$color_BarraSuperior3"
		echo "|$system_LineaVISTAOP1||                $color_Titulo1               |"
		echo "|$system_LineaVISTAOP2||                $color_Titulo2               |"
		echo "|$system_LineaVISTAOP3||                $color_Titulo3                  |"
		echo "|$system_LineaVISTAOP4||                $color_Titulo4                  |"
		echo "|$system_LineaVISTAOP5||                $color_Titulo5                  |"
		echo -e "|\e[7m                                   \e[0m||                $color_Titulo6                  |"
		echo "|$system_LineaVISTAOP_SYS||                                                                                        |"
		echo "|$system_LineaVISTAOP_SYS1||                                                                                        |"
		echo "|$system_LineaVISTAOP_MP||       $color_BarraSuperiorTitulo1         |"
		echo "|$system_LineaVISTAOP_MP1||       $color_BarraSuperiorTitulo2         |"
		echo "|$system_LineaVISTAOP_MP2||       $color_BarraSuperiorTitulo3         |"
		echo "|$system_LineaVISTAOP_MP3||       | $color_MargenSuperiorTexto |         |"

		if test $yaLogeado -eq 1
			then
					echo "|$system_LineaVISTAOP_MP4||       |  |> [ $color_Texto_MP1 []   |> |     $color_Opcion_MP1        | |         |"
			else
					echo "|$system_LineaVISTAOP_MP4||       |  |> [ $colorDIM_Texto_MP1 []   |> |     $colorDIM_Opcion_MP1        | |         |"
		fi #End < $yaLogeado -eq 1 >
		
		echo "|$system_LineaVISTAOP_MP5||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_MP6||       | $color_MargenSuperiorTexto |         |"
		
		if test $cant_archivo -eq 0
			then
					echo "|$system_LineaVISTAOP_HCK||       |  |> [ $colorDIM_Texto_MP2  []   |> |        $colorDIM_Opcion_MP2          | |         |"
			else
					echo "|$system_LineaVISTAOP_HCK||       |  |> [ $color_Texto_MP2  []   |> |        $color_Opcion_MP2          | |         |"
		fi #End < $cant_archivo -ge 1 >
		
		echo "|$system_LineaVISTAOP_IS||       | $color_MargenInferiorTexto |         |"
		echo "|$system_LineaVISTAOP_REG||       | $color_MargenSuperiorTexto |         |"
		
		if test $cant_archivo -le 3
			then
				echo "|$system_LineaVISTAOP_HIS||       |  |> [ $color_Texto_MP3 [$color_PuntoTexto3]   |> |       $color_Opcion_MP3        | |         |"
			else
				echo "|$system_LineaVISTAOP_HIS||       |  |> [ $colorDIM_Texto_MP3 [$color_PuntoTexto3]   |> |       $colorDIM_Opcion_MP3        | |         |"
		fi #End < $cant_archivo -le 3 >

		echo "|$system_LineaVISTAOP_CRE||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [ $colorDIM_Texto_MP4 [$color_PuntoTexto4y5]   |> |      $color_Opcion_MP4         | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [ $color_Texto_MP5 [$color_PuntoTexto4y5]   |> |       $color_Opcion_MP5          | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       | $color_MargenSuperiorTexto |         |"
		echo "|                                   ||       |  |> [ $color_Texto_MP6 []   |> |         $color_Opcion_MP6            | |         |"
		echo "|                                   ||       | $color_MargenInferiorTexto |         |"
		echo "|                                   ||       └──────────────────────────────────────────────────────────────────────┘         |"
		echo "|                                   ||                                                                                        |"
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		case $system_SujetoNomLogeado in
			0)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				echo "|$color_SujetoLogeadoL2||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
				echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
			;;
			*)
				echo "|$color_SujetoLogeadoL1||$textoEnLineaM|"
				case $cant_CharTX in
					4)
						echo "|$color_SujetoLogeadoL3$color_EspNullC28||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					5)
						echo "|$color_SujetoLogeadoL3$color_EspNullC27||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					6)
						echo "|$color_SujetoLogeadoL3$color_EspNullC26||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					7)
						echo "|$color_SujetoLogeadoL3$color_EspNullC25||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					8)
						echo "|$color_SujetoLogeadoL3$color_EspNullC24||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					9)
						echo "|$color_SujetoLogeadoL3$color_EspNullC23||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					10)
						echo "|$color_SujetoLogeadoL3$color_EspNullC22||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					11)
						echo "|$color_SujetoLogeadoL3$color_EspNullC21||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					12)
						echo "|$color_SujetoLogeadoL3$color_EspNullC20||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
					13)
						echo "|$color_SujetoLogeadoL3$color_EspNullC19||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
						echo -e "|\e[7m                                   \e[0m||$textoEnLineaM|"
					;;
				esac #End < $cant_CharTX in >
			;;
		esac #End < $system_SujetoNomLogeado in >

		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"
		echo "┌───────────────────────────────────┐┌────────────────────────────────────────────────────────────────────────────────────────┐"
		read -p "|                                   ||$color_PromptSujetoRED" opMenuPrincipal
		echo "└───────────────────────────────────┘└────────────────────────────────────────────────────────────────────────────────────────┘"

		case $opMenuPrincipal in
			system.status.turn.play)
				# AGREGAR EL SHELL SCRIPT!!!
				clear
				animacion_MenuPrincipal
			;;
			system.state.login)
				clear
				if test $cant_archivo -eq 0
					then #Error: no hay ningun user creado
						MenuPrincipal
					else 
						#VAR inicializadas para implementarlas en Function Login
						sujetoSelect=0
						sujetoSelect1=0
						sujetoSelect2=0										
						aux_verificaEstadoLogin=0
						casoPrompt=0
						aux_seVerifico=0 
						loginSelect=0
						animacion_Login
				fi
			;;			
			system.state.register)
				clear
				if test $cant_archivo -le 3
					then
						animacion_Register
					else #Error no puede haber mas de 3 Sujetos
						MenuPrincipal
				fi
			;;
			system.access.history)
				clear
				MenuPrincipal
			;;
			system.view.credits)
				clear
				animacion_Credits 
			;;
			system.out.exit)
				clear
				confirma_EOF
			;;
			*)
				MenuPrincipal
			;;
		esac #End < opMenuPrincipal >
	} #End Function MenuPrincipal
	animacion_MenuPrincipal
#}

#==================================================================================================================================



#----------------------------------------------------------------------------------------------------------------------------------
#PARA REVISAR {
	#-------------------------------------------------------------------------------
		#	if test $textoEnLiena5 -eq $textoEnLineaM
		#		then 
		#			$textoEnLinea5="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#		else
		#			if test $textoEnLiena4 -eq "                                                                                        "
		#				then 
		#					$textoEnLinea4="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#		   		else 
		#					if test $textoEnLiena3 -eq "                                                                                        "
		#						then 
		#			 				$textoEnLinea3="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#		      				else 
		#		           				if test $textoEnLiena2 -eq "                                                                                        "
		#		            					then 
		#			     						$textoEnLinea2="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#			   					else 
		#		              						if test $textoEnLiena1 -eq "	                                                                                        "
		#		               							then 
		#			        							$textoEnLinea1="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#			      							else 
		#											$textoEnLinea1=$textoEnLinea2
		#											$textoEnLinea2=$textoEnLinea3
		#											$textoEnLinea3=$textoEnLinea4
		#											$textoEnLinea4=$textoEnLinea5
		#											$textoEnLinea5="Ya se a registrado el nombre de la cuenta $color_MensajeERROR"
		#									 fi
		#		      					 fi
		#		  			 fi
		#	       		 fi
		#	 fi
	#-------------------------------------------------------------------------------
#}	