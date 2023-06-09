# Localized	12/07/2019 11:53 AM (GMT)	303:6.40.20520 	PSDesiredStateConfiguration.Resource.psd1
# Localized	04/21/2015 09:07 AM (GMT)	303:4.80.0411 	PSDesiredStateConfiguration.Resource.psd1
# Localized PSDesiredStateConfigurationResource.psd1

ConvertFrom-StringData @'
###PSLOC
CheckSumFileExists=El archivo '{0}' ya existe. Especifique el parámetro -Force para sobrescribir los archivos de suma de comprobación existentes.
CreateChecksumFile=Crear el archivo de suma de comprobación '{0}'
OverwriteChecksumFile=Sobrescribir el archivo de suma de comprobación '{0}'
OutpathConflict=(ERROR) No se puede crear el directorio '{0}'. Existe un archivo con el mismo nombre.
InvalidConfigPath=(ERROR) Se especificó una ruta de acceso de configuración no válida ('{0}').
InvalidOutpath=(ERROR) Se especificó un OutPath no válido ('{0}').
InvalidConfigurationName=Se especificó un nombre de configuración no válido "{0}". Los nombres estándar solo pueden contener letras (a-z, A-Z), números (0-9), puntos (.), guiones (-) y guiones bajos (_). El nombre no puede ser nulo ni estar vacío y debe comenzar con una letra.
NoValidConfigFileFound=No se encontraron archivos de configuración (mof, zip) válidos.
InputFileNotExist=El archivo {0} no existe.
FileReadError=Error al leer el archivo {0}.
MatchingFileNotFound=No se encontraron archivos coincidentes.
CertificateFileReadError=Error al leer el archivo de certificado {0}.
CertificateStoreReadError=Error al leer el almacén de certificados para {0}.
CannotCreateOutputPath=Combinación de nombre de configuración y ruta de acceso de salida no válida: {0}. Asegúrese de que el parámetro de salida sea un segmento de trazado válido.
ConflictingDuplicateResource=Se encontró un conflicto entre los recursos "{0}" y "{1}" en el nodo "{2}". Los recursos tienen propiedades de clave idénticas, pero hay diferencias en las siguientes propiedades que no son de clave: "{3}". Los valores "{4}" no coinciden con los valores "{5}". Actualiza estos valores de propiedad para que sean idénticos en ambos casos.
ConfiguratonDataNeedAllNodes=El parámetro ConfigurationData debe tener la propiedad AllNodes.
ConfiguratonDataAllNodesNeedHashtable=La propiedad AllNodes del parámetro ConfigurationData debe ser una colección.
AllNodeNeedToBeHashtable=todos los elementos de AllNodes deben ser una tabla hash y tener una propiedad 'NodeName'.
DuplicatedNodeInConfigurationData=Hay NodeNames '{0}' duplicados en el configurationData pasado.
EncryptedToPlaintextNotAllowed=No se recomienda convertir ni cifrar contraseñas como texto sin formato. Para obtener más información sobre cómo proteger las credenciales en el archivo MOF, consulta el blog de MSDN: https://go.microsoft.com/fwlink/?LinkId=393729
DomainCredentialNotAllowed=No se recomienda usar las credenciales de dominio del nodo '{0}'. Para suprimir la advertencia, puedes agregar una propiedad con el nombre 'PSDscAllowDomainUser' con un valor $true a los datos de configuración de DSC del nodo '{0}'.
NestedNodeNotAllowed=No se permite definir el nodo '{0}' dentro del nodo actual '{1}' ya que las definiciones de nodo no se pueden anidar. Mueva la definición para el nodo '{0}' al nivel superior de la configuración '{2}'.
FailToProcessNode=Se generó una excepción mientras se procesaba el nodo '{0}': {1}
LocalHostNodeNotAllowed=No se permite definir un nodo 'localhost' en la configuración '{0}' porque la configuración ya contiene una o varias definiciones de recursos que no están asociadas con ningún nodo.
InvalidMOFDefinition=Definición de MOF no válida para el nodo '{0}': {1}
RequiredResourceNotFound=No existe el recurso '{0}' requerido por '{1}'. Asegúrese de que el recurso obligatorio exista y que el nombre esté bien formado.
ReferencedManagerNotFound=El administrador de descargas '{0}' al que hace referencia '{1}' no existe. Asegúrese de que el administrador de descargas al que se hace referencia existe y que el nombre tiene el formato correcto.
ReferencedResourceSourceNotFound=El repositorio de recursos "{0}"' al que hace referencia "{1}" no existe. Asegúrate de que el repositorio de recursos al que se hace referencia existe y que el nombre tiene el formato correcto.
DependsOnLinkTooDeep=El vínculo DependsOn excedió el límite máximo de profundidad '{0}'.
DependsOnLoopDetected=Existe DependsOn circular '{0}'. Asegúrese de que no haya referencias circulares.
FailToProcessConfiguration=Se produjeron errores de compilación al procesar la configuración '{0}'. Revisa los errores notificados en la secuencia de error y modifica el código de configuración de manera adecuada.
FailToProcessProperty={0} error al procesar la propiedad '{1}' DE TIPO '{2}': {3}
NodeNameIsRequired=Se omitió el procesamiento de nodo porque el nombre de nodo está vacío.
ConvertValueToPropertyFailed=No se puede convertir '{0}' al tipo '{1}' para la propiedad '{2}'.
ResourceNotFound=El término '{0}' no se reconoce como el nombre de {1}.
GetDscResourceInputName=El valor de parámetro '{0}' de entrada Get-DscResource es '{1}'.
ResourceNotMatched=Omitiendo recurso '{0}' ya que no coincide con el nombre solicitado.
InitializingClassCache=Inicializando caché de clase
LoadingDefaultCimKeywords=Cargando palabras clave de CIM predeterminadas
GettingModuleList=Obteniendo lista de módulos
CreatingResourceList=Creando lista de recursos
CreatingResource=Creando recurso '{0}'.
SchemaFileForResource=Nombre del archivo de esquema para el recurso {0}
UnsupportedReservedKeyword=La palabra clave '{0}' no se admite en esta versión del idioma.
UnsupportedReservedProperty=La propiedad '{0}' no se admite en esta versión del idioma.
MetaConfigurationHasMoreThanOneLocalConfigurationManager=La configuración meta para el nodo "{0}" contiene más de una definición de LocalConfigurationManager, lo que no se permite.
MetaConfigurationSettingsMissing=Falta la definición de configuración para el nodo '{0}'. Se agregó una definición de configuración vacía predeterminada para el nodo.
ConflictInExclusiveResources=Las configuraciones parciales "{0}" y "{1}" tienen declaraciones de recursos exclusivos en conflicto.
ReferencedModuleNotExist=El módulo "{0}" al que se hace referencia no existe en el PC. Usa Get-DscResource para conocer el contenido del PC.
ReferencedResourceNotExist=El recurso "{0}" al que se hace referencia no existe en el PC. Usa Get-DscResource para conocer el contenido del PC.
ReferencedModuleResourceNotExist=El módulo o recurso "{0}" al que se hace referencia no existe en el PC. Usa Get-DscResource para conocer el contenido del PC.
DuplicatedResourceInModules=El recurso "{0}" al que se hace referencia existe en el módulo {1} y en el módulo {2} del PC. Comprueba que solo exista en un módulo.
CannotConvertStringToBool=No se puede convertir el valor "System.String" al tipo "System.Boolean". Los parámetros booleanos solo aceptan valores booleanos y números, como $True, $False, 1 o 0.
NoModulesPresent=No hay módulos presentes en el sistema con la especificación de módulo proporcionado.
ImportDscResourceWarningForInbuiltResource=La configuración '{0}' está cargando uno o varios recursos integrados sin importar de forma explícita los módulos asociados. Agrega Import-DscResource –ModuleName 'PSDesiredStateConfiguration' a tu configuración para evitar este mensaje.
PasswordTooLong=Se produjo un error durante el cifrado de una contraseña en el nodo '{0}'. Es posible que la contraseña escrita sea demasiado larga para cifrarse mediante el certificado seleccionado. Usa una contraseña más corta o selecciona un certificado con una clave mayor.
HashtableElementTypeNotAllowed=El valor de tipo '{0}' no está permitido en la tabla hash. Tipos compatibles: [String], [Char], [Int64], [UInt64], [Double], [Bool], [DateTime] y [ScriptBlock].
PullModeWithoutDownloadManager=La configuración meta está establecida en el modo de extracción, que necesita un elemento DownloadManager que lo especifique.
PullModeWithoutConfigurationRepository=La configuración meta está establecida en el modo de extracción, que necesita un elemento ConfigurationRepository que lo especifique.
DownloadManagerWithoutPullMode=Se especificó un elemento DownloadManager sin establecer el modo de actualización en PULL.
ConfigurationRepositoryWithoutPullMode=Se especificó un elemento ConfigurationRepository sin establecer el modo de actualización en PULL.
ReferencedPolicyNotDefined=La directiva de validación de firma "{0}" a la que se hizo referencia no está definida. Define un bloque de validación de firma con el mismo nombre.
IncorrectSignatureValidationPolicyFormat=El valor proporcionado para la directiva de validación de firma presenta un formato incorrecto. Proporciona el valor de la siguiente manera: "[ValidaciónDeFirma]<Nombre>".
###PSLOC
'@
