# Localized	12/07/2019 11:50 AM (GMT)	303:6.40.20520 	ArchiveProvider.psd1
# Localized ArchiveProvider.psd1

ConvertFrom-StringData @'
###PSLOC
InvalidChecksumArgsMessage=La especificación de una suma de comprobación sin solicitar validación del contenido (el parámetro Validate) no tiene sentido
InvalidDestinationDirectory=El directorio de destino especificado {0} no existe o no es un directorio
InvalidSourcePath=El archivo de origen especificado {0} no existe o no es un archivo
InvalidNetSourcePath=El archivo de origen especificado {0} no es una ruta de acceso de origen de red válida
ErrorOpeningExistingFile=Error al abrir el archivo {0} en el disco. Examine la excepción interna para obtener más detalles.
ErrorOpeningArchiveFile=Error al abrir el archivo de almacenamiento {0}. Examine la excepción interna para obtener más detalles.
ItemExistsButIsWrongType=El elemento con nombre ({0}) existe, pero no es del tipo esperado, y no se especificó Force
ItemExistsButIsIncorrect=Se ha determinado que el archivo de destino {0} no coincida con el de origen, pero no se ha especificado Force. No se puede continuar.
ErrorCopyingToOutstream=Error al copiar el archivo de almacenamiento en {0}
PackageUninstalled=El archivo ubicado en {0} se quitó del destino {1}
PackageInstalled=El archivo ubicado en {0} se desempaquetó en el destino {1}
ConfigurationStarted=La configuración de MSFT_ArchiveResource se está iniciando
ConfigurationFinished=La configuración de MSFT_ArchiveResource ha finalizado
MakeDirectory=Crear el directorio {0}
RemoveFileAndRecreateAsDirectory=Quitar el archivo existente {0} y reemplazarlo con un directorio del mismo nombre
RemoveFile=Quitar archivo {0}
RemoveDirectory=Quitar directorio {0}
UnzipFile=Descomprimir archivo de almacenamiento en {0}
DestMissingOrIncorrectTypeReason=El archivo de destino {0} estaba ausente o no era un archivo
DestHasIncorrectHashvalue=El archivo de destino {0} existe pero su suma de comprobación no coincidía con el archivo de origen
DestShouldNotBeThereReason=El archivo de destino {0} existe pero no debería
UsingKeyToRetrieveHashValue=Usando {0} para recuperar el valor hash
Nocachevaluefound=No se ha encontrado ningún valor de caché
Cachevaluefoundreturning=Se ha encontrado el valor de caché, devolviendo {0}
CacheCorrupt=Se encontró la memoria caché, pero no se puede cargar. Se ignorará.
Usingtmpkeytosavehashvalue=Usando {0} {1} para guardar el valor hash
AbouttocachevalueInputObject=A punto de almacenar en caché el valor {0}
InUpdateCache=En Update-Cache
AddingentryFullNameasacacheentry=Agregando {0} como una entrada de caché
UpdatingCacheObject=Actualizando CacheObject
Placednewcacheentry=Colocada nueva entrada de caché
NormalizeChecksumreturningChecksum=Normalize-Checksum está devolviendo {0}
PathPathisalreadyaccessiableNomountneeded.=La ruta {0} ya es accesible. No es necesario montarla.
Pathpathisnotavalidatenetpath=La ruta de acceso {0} no es una ruta neta validada.
createpsdrivewithPathpath=crear psdrive con la ruta de acceso {0}...
CannotaccessPathPathwithgivenCredential=No se puede tener acceso a la ruta {0} con las credenciales proporcionadas
Abouttovalidatestandardarguments=A punto de validar argumentos estándar
Goingforcacheentries=Buscando entradas de caché
Thecachewasuptodateusingcachetosatisfyrequests=La caché estaba actualizada, usando la caché para satisfacer las solicitudes
Abouttoopenthezipfile=A punto de abrir el archivo zip
Cacheupdatedwithentries=Caché actualizada con {0} entradas
Processing=Procesando {0}
InTestTargetResourcedestexistsnotusingchecksumscontinuing=En Test-TargetResource: {0} existe, no se usan sumas de comprobación, continuando
Notperformingchecksumthefileondiskhasthesamewritetimeasthelasttimeweverifieditscontents=No se realiza la suma de comprobación, el archivo en el disco tiene la misma hora de escritura que la última vez que se comprobó su contenido
destexistsandthehashmatcheseven={0} existe y el hash coincide aunque LastModifiedTime no es el mismo. Actualizando la caché
InTestTargetResourcedestexistsandtheselectedtimestampChecksummatched=En Test-TargetResource: {0} existe y la marca de tiempo seleccionada {1} coincide
RemovePSDriveonRootpsdriveRoot=Quitar PSDrive en la raíz {0}
RemovingDir=Quitando {0}
Hashesofexistingandzipfilesmatchremoving=Los valores hash de los archivos existentes y zip coinciden, quitando
HashdidnotmatchfilehasbeenmodifiedsinceitwasextractedLeaving=El valor hash no coincide, el archivo se ha modificado desde que se extrajo. Saliendo
InSetTargetResourceexistsselectedtimestampmatched=En Set-TargetResource: {0} existe y la marca de tiempo seleccionada {1} coincide, quitando
InSetTargetResourceexistsdtheselectedtimestampnotmatchg=En Set-TargetResource: {0} existe y la marca de tiempo seleccionada no {1} coincide, saliendo
existingappearstobeanemptydirectoryRemovingit={0} parece ser un directorio vacío. Quitándolo
LastWriteTimemtcheswhatwehaverecordnotreexaminingchecksum=LastWriteTime de {0} coincide con lo que tenemos en el registro, no se vuelve a examinar {1}
FoundfatdestwheregoingtoplaceoneandhashmatchedContinuing=Se ha encontrado un archivo en {0} donde íbamos a colocar uno y el hash coincide. Continuando
FoundfileatdestwhereweweregoingtoplaceoneandhashdidntmatchItwillbeoverwritten=Se ha encontrado un archivo en $dest donde íbamos a colocar uno y el hash no coincide. Se sobrescribirá
FoundfileatdestwhereweweregoingtoplaceoneanddoesnotmatchthesourcebutForcewasnotspecifiedErroring=Se ha encontrado un archivo en {0} donde íbamos a colocar uno y el origen no coincide, pero no se especificó el parámetro Force. Notificando error
InSetTargetResourcedestexistsandtheselectedtimestamp$ChecksumdidnotmatchForcewasspecifiedwewilloverwrite="En Set-TargetResource: {0} existe y la marca de tiempo seleccionada {1} no coincide. Se especificó el parámetro Force, se sobrescribirá
FoundafileatdestandtimestampChecksumdoesnotmatchthesourcebutForcewasnotspecifiedErroring=Se ha encontrado un archivo en {0} y la marca de tiempo {1} no coincide con el origen, pero no se especificó el parámetro Force. Notificando error
FoundadirectoryatdestwhereafileshouldbeRemoving=Se ha encontrado un directorio en {0} donde debería estar un archivo. Quitando
FounddirectoryatdestwhereafileshouldbeandForcewasnotspecifiedErroring=Se ha encontrado un directorio en {0} donde debería estar un archivo y no se especificó el parámetro Force. Notificando error.
Writingtofiledest=Escribiendo en el archivo {0}
RemovePSDriveonRootdriveRoot=Quitar PSDrive en raíz {0}
Updatingcache=Actualizando caché
FolderDirdoesnotexist=La carpeta {0} no existe
Examiningdirectorytoseeifitshouldberemoved=Examinando {0} para comprobar si se debe quitar
InSetTargetResourcedestexistsandtheselectedtimestampChecksummatchedwillleaveit=En Set-TargetResource: {0} existe y la marca de tiempo seleccionada {1} coincide, se saldrá
###PSLOC

'@
