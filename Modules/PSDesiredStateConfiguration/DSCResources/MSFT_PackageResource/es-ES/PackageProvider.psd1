# Localized	12/07/2019 11:53 AM (GMT)	303:6.40.20520 	PackageProvider.psd1
# Localized PackageProvider.psd1

ConvertFrom-StringData @'
###PSLOC
InvalidIdentifyingNumber=El elemento IdentifyingNumber ({0}) especificado no es un Guid válido
InvalidPath=El elemento Path ({0}) especificado no tiene un formato válido. Los formatos válidos son rutas locales, UNC y HTTP.
InvalidNameOrId=El valor de Name ({0}) e IdentifyingNumber ({1}) especificados no coinciden con el valor de Name ({2}) e IdentifyingNumber ({3}) en el archivo MSI
NeedsMoreInfo=Se requiere Name o ProductId
InvalidBinaryType=El elemento Path ({0}) especificado no especifica un archivo EXE o MSI, de modo que no se admite
CouldNotOpenLog=El elemento LogPath ({0}) especificado no se pudo abrir
CouldNotStartProcess=El proceso {0} no se pudo iniciar
UnexpectedReturnCode=No se esperaba el código de retorno {0}. Es probable que la configuración con sea correcta.
PathDoesNotExist=No se pudo encontrar el elemento Path especificado ({0})
CouldNotOpenDestFile=No se pudo abrir el archivo {0} para escritura
CouldNotGetHttpStream=No se pudo obtener la secuencia {0} para el archivo {1}
ErrorCopyingDataToFile=Error al escribir el contenido de {0} en {1}
PackageConfigurationComplete=Configuración del paquete finalizada
PackageConfigurationStarting=La configuración del paquete está iniciándose
InstalledPackage=Paquete instalado
UninstalledPackage=Paquete desinstalado
NoChangeRequired=Paquete encontrado en el estado deseado, no se requiere ninguna acción
RemoveExistingLogFile=Quitar archivo de registro existente
CreateLogFile=Crear archivo de registro
MountSharePath=Montar recurso compartido para obtener multimedia
DownloadHTTPFile=Descargar el contenido multimedia a través de HTTP o HTTPS
StartingProcessMessage=Iniciando el proceso {0} con los argumentos {1}
RemoveDownloadedFile=Quitar el archivo descargado
PackageInstalled=El paquete se ha instalado
PackageUninstalled=El paquete se ha desinstalado
MachineRequiresReboot=El equipo necesita reiniciarse
PackageDoesNotAppearInstalled=El paquete {0} no está instalado
PackageAppearsInstalled=El paquete {0} está instalado
PostValidationError=Se instaló el paquete de {0}, pero el ProductId y/o Name especificados no coinciden con los detalles del paquete
ValidateStandardArgumentsPathwasPath=Validate-StandardArguments, la ruta de acceso era {0}
TheurischemewasuriScheme=El esquema de URL era {0}
ThepathextensionwaspathExt=La extensión de la ruta de acceso era {0}
ParsingProductIdasanidentifyingNumber=Analizando {0} como un elemento identifyingNumber
ParsedProductIdasidentifyingNumber={0} analizado como {1}
EnsureisEnsure=Asegúrese de que es {0}
productisproduct=producto {0} encontrado
productasbooleanis=el producto como booleano es {0}
Creatingcachelocation=Creando ubicación de caché
NeedtodownloadfilefromschemedestinationwillbedestName=Se necesita descargar el archivo de {0}, el destino será {1}
Creatingthedestinationcachefile=Creando el archivo de caché de destino
Creatingtheschemestream=Creando la secuencia de {0}
Settingdefaultcredential=Estableciendo credenciales predeterminadas
Settingauthenticationlevel=Estableciendo nivel de autenticación
Ignoringbadcertificates=Ignorando certificados erróneos
Gettingtheschemeresponsestream=Obteniendo la secuencia de respuesta de {0}
ErrorOutString=Error: {0}
Copyingtheschemestreambytestothediskcache=Copiando los bytes de la secuencia de {0} en la caché de disco
Redirectingpackagepathtocachefilelocation=Redirigiendo la ruta de acceso del paquete a la ubicación de archivo de caché
ThebinaryisanEXE=El binario es un archivo EXE
Userhasrequestedloggingneedtoattacheventhandlerstotheprocess=El usuario ha solicitado el registro, es necesario adjuntar controladores de eventos para el proceso
StartingwithstartInfoFileNamestartInfoArguments=Iniciando {0} con {1}
###PSLOC

'@
