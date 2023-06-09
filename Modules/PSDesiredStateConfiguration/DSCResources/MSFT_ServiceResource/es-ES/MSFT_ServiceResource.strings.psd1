# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_ServiceResource.strings.psd1
# Localized resources for MSFT_UserResource

ConvertFrom-StringData @'
###PSLOC
ServiceNotFound=No se encontró el servicio '{0}'.
CannotStartAndDisable=No se puede iniciar y deshabilitar un servicio.
CannotStopServiceSetToStartAutomatically=No se puede detener un servicio y establecerlo para que se inicie automáticamente.
ServiceAlreadyStarted=Ya se inició el servicio '{0}'. No se requiere ninguna acción.
ServiceStarted=Servicio '{0}' iniciado.
ServiceStopped=Servicio '{0}' detenido.
ErrorStartingService=No se pudo iniciar el servicio '{0}'. Compruebe la ruta de acceso '{1}' proporcionada para el servicio. Mensaje: '{2}'
OnlyOneParameterCanBeSpecified=Solo se puede especificar uno de los siguientes parámetros: '{0}', '{1}'.
StartServiceWhatIf=Iniciar servicio
ServiceAlreadyStopped=Ya se detuvo el servicio '{0}'. No se requiere ninguna acción.
ErrorStoppingService=No se pudo detener el servicio '{0}'. Mensaje: '{1}'
ErrorRetrievingServiceInformation=No se pudo recuperar la información del servicio '{0}'. Mensaje: '{1}'
ErrorSettingServiceCredential=Error al establecer credenciales para el servicio '{0}'. Mensaje: '{1}'
SetCredentialWhatIf=Establecer credencial
SetStartupTypeWhatIf=Establecer tipo de inicio
ErrorSettingServiceStartupType=No se pudo establecer el tipo de inicio del servicio '{0}'. Mensaje: '{1}'
TestUserNameMismatch=El nombre de usuario del servicio "{0}" es "{1}". No coincide con "{2}".
TestStartupTypeMismatch=El tipo de inicio del servicio '{0}' es '{1}'. No coincide con '{2}'.
MethodFailed=Error del método '{0}' de '{1}' con código de error: '{2}'.
ErrorChangingProperty=No se pudo cambiar la propiedad '{0}'. Mensaje: '{1}'
ErrorSetingLogOnAsServiceRightsForUser=Error al conceder a '{0}' el permiso para iniciar sesión como un servicio. Mensaje: '{1}'.
CannotOpenPolicyErrorMessage=No se puede abrir el Administrador de directivas
UserNameTooLongErrorMessage=El nombre de usuario es demasiado largo
CannotLookupNamesErrorMessage=Error al buscar el nombre de usuario
CannotOpenAccountErrorMessage=Error al abrir la directiva para el usuario
CannotCreateAccountAccessErrorMessage=Error al crear la directiva para el usuario
CannotGetAccountAccessErrorMessage=Error al obtener los derechos de directiva de usuario
CannotSetAccountAccessErrorMessage=Error al establecer los derechos de directiva de usuario
BinaryPathNotSpecified=Especifique la ruta de acceso al archivo ejecutable cuando intente crear un nuevo servicio
ServiceAlreadyExists=El servicio '{0}' que se va a crear ya existe
ServiceExistsSamePath=El servicio '{0}' que se va a crear ya existe con la ruta de acceso '{1}'
ServiceNotExists=El servicio '{0}' no existe. Especifique la ruta de acceso al archivo ejecutable para crear un nuevo servicio
ErrorDeletingService=Error al eliminar el servicio '{0}'
ServiceDeletedSuccessfully=El servicio '{0}' se eliminó correctamente
TryDeleteAgain=Espere dos segundos hasta que se elimine un servicio
WritePropertiesIgnored=El servicio '{0}' ya existe. Las propiedades de escritura como Status, DisplayName, Description y Dependencies se omitirán para los servicios existentes.
###PSLOC

'@

