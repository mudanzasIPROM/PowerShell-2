# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_ProcessResource.strings.psd1
# Localized resources for MSFT_UserResource

ConvertFrom-StringData @'
###PSLOC
FileNotFound=No se encontró el archivo en la ruta del entorno.
AbsolutePathOrFileName=Se esperaba una ruta absoluta o un nombre de archivo.
InvalidArgument=Argumento no válido: '{0}' con valor: '{1}'.
InvalidArgumentAndMessage={0} {1}
ProcessStarted=Ruta de coincidencia de procesos '{0}' iniciada
ProcessesStopped=Se detuvo la ruta de coincidencia de procesos '{0}' con identificadores '({1})'.
ProcessAlreadyStarted=Se encontró la ruta de coincidencia de procesos '{0}' en ejecución y no se requiere ninguna acción.
ProcessAlreadyStopped=No se encontró la ruta de coincidencia de procesos '{0}' en ejecución y no se requiere ninguna acción.
ErrorStopping=Error al detener la ruta de coincidencia de procesos '{0}' con identificadores '({1})'. Mensaje: {2}.
ErrorStarting=Error al iniciar la ruta de coincidencia de procesos '{0}'. Mensaje: {1}.
StartingProcessWhatif=Iniciar-Proceso
ProcessNotFound=Ruta de coincidencia de procesos '{0}' no encontrada
PathShouldBeAbsolute=La ruta de acceso debe ser absoluta
PathShouldExist=La ruta de acceso debe existir
ParameterShouldNotBeSpecified=El parámetro {0} no debería especificarse.
FailureWaitingForProcessesToStart=No se pudo esperar a que comiencen los procesos
FailureWaitingForProcessesToStop=No se pudo esperar a que se detengan los procesos
ErrorParametersNotSupportedWithCredential=No se puede especificar StandardOutputPath, StandardInputPath o WorkingDirectory cuando se intenta ejecutar un proceso bajo un contexto de usuario.
VerboseInProcessHandle=Identificador en proceso {0}
ErrorInvalidUserName=UserName {0} no es válido.
ErrorRunAsCredentialParameterNotSupported=El parámetro PsDscRunAsCredential no es compatible con el recurso del proceso. Para iniciar el proceso con el usuario '{0}', agrega el parámetro Credential.
ErrorCredentialParameterNotSupportedWithRunAsCredential=El parámetro PsDscRunAsCredential no es compatible con el recurso de proceso y no se puede usar con el parámetro Credential. Para iniciar el proceso con el usuario '{0}', usa solo el parámetro Credential, no el parámetro PsDscRunAsCredential.
###PSLOC
'@
