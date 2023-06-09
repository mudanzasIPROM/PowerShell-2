# Localized	12/07/2019 11:49 AM (GMT)	303:6.40.20520 	Resources.psd1
#
# Remote Desktop Management Localization File  
#

ConvertFrom-StringData @'
    
    ###PSLOC start localizing
    
    #
    # General
    #
PromptCaption=¿Desea continuar?
ResourceTypeUnknown=Desconocido
ResourceTypeRemoteApp=Programas RemoteApp
ResourceTypeRemoteDesktop=Escritorio remoto
WrnWildcardNoMatches=No se ha encontrado ninguna coincidencia para {0}.
InvalidAccount=No se pudo convertir la cuenta {0} en un SID válido.
CannotDetermineCollectionExists=Error al determinar si existe una colección con el mismo nombre.
CannotCreateCollectionAlias=Error al generar un alias de colección válido para usar.
InvalidLocalUser=El usuario actual no es un usuario de dominio.
NonElavatedMessage=Este módulo necesita privilegios de administrador. Reinicia esta sesión en modo elevado.
WaitingForBatchToComplete=Esperando a que el lote actual de {0} trabajos se complete...
WaitingForJobToComplete=Esperando a que el trabajo actual se complete...
RestartingTSSDISService=Reiniciando servicio del Agente de conexión a Escritorio remoto (tssdis) en el servidor {0}...
RestartingRDMSService=Reiniciando el servicio de administración de Escritorio remoto (rdms) en el servidor {0}...
RestartingTSCPUBRPCService=Reiniciando el servicio de publicación de Escritorio remoto (tscpubrpc) en el servidor {0}...
      
    #
    # Deployment check messages
    #
DeploymentDoesNotExist=No existe una implementación de Servicios de Escritorio remoto en {0}. Esta operación se puede realizar después de crear una implementación. Para obtener información sobre cómo crear una implementación, ejecute "Get-Help New-RDVirtualDesktopDeployment" o "Get-Help New-RDSessionDeployment".
SessionDeploymentDoesNotExist=No existe una implementación de escritorio basada en sesión de Servicios de Escritorio remoto en {0}. Esta operación se puede realizar después de crear una implementación de escritorio basada en sesión. Para obtener información sobre cómo crear una implementación de escritorio basada en sesión, ejecute "Get-Help New-RDSessionDeployment".
VirtualDeploymentDoesNotExist=No existe una implementación de escritorio basada en máquina virtual de Servicios de Escritorio remoto en {0}. Esta operación se puede realizar después de crear una implementación de escritorio basada en máquina virtual. Para obtener información sobre cómo crear una implementación de escritorio basada en máquina virtual, ejecute "Get-Help New-RDVirtualDesktopDeployment".
ValidationInprogress=Validación en curso...
InstallationInprogress=Instalación en curso...
ConfigurationInprogress=Configuración en curso...
DeploymentInprogress=Implementación en curso...
VerificationInprogress=Verificación de la implementación en curso...
RemovalInprogress=Eliminación de la configuración en curso...
GatewayDoesNotExist=La implementación no contiene un servidor de Puerta de enlace de Escritorio remoto.
WebAccessDoesNotExist=La implementación no contiene un servidor de Acceso web de Escritorio remoto.

    #
    # Add/Remove server
    #
WarnRemoveServerMessage=Se va a quitar el servidor de la implementación de Escritorio remoto. ¿Desea continuar?
SessionDeploymentTypeNameString=sesión
VDIDeploymentTypeNameString=escritorio virtual


    #
    # RDMS Heart Beat
    #
RdmsRoleNotInstalled=El servicio de rol de Agente de conexión a Escritorio remoto no está instalado en el servidor {0}.
RdmsServicesNotRunning=El estado del servidor de Agente de conexión a Escritorio Remoto es 'en mal estado'. Los siguientes servicios no se están ejecutando: {0}.
RdmsServerIsNotActive=El estado del servidor de Agente de conexión a Escritorio remoto es 'no activo' para administración. El servidor activo actual es: {0}. Consulte el servidor  de Agente de conexión a Escritorio remoto para todas las operaciones de administración.
    
    #
    # Certificate
    #
InvalidCertificateRole=El tipo de certificado de Escritorio remoto especificado no es válido. Los tipos de certificado de Escritorio remoto válidos son RDGateway, RDWebAccess, RDRedirector y RDPublishing.
WarnCreatingAndConfiguringCertMessage=Se va a crear y configurar el certificado para el rol: {0}. ¿Desea continuar?
WarnConfiguringCertMessage=Se va a configurar el certificado para el rol: {0}. ¿Desea continuar?
CertificateLevelUnknown=Desconocido
CertificateLevelNotConfigured=No configurado
CertificateLevelUntrusted=No es de confianza
CertificateLevelTrusted=De confianza
CertificateNotConfigured=El certificado no está configurado para el rol {0}.

    #
    # General Validations
    #
VerifyingInput=Comprobando entrada...
InvalidFqdn=El FQDN especificado, {0}, no es válido.
InvalidPath=La ruta de acceso especificada, {0}, no es válida o es inaccesible.
InvalidPfxFile=ImportPath {0} no es un archivo pfx
InvalidHostname=El nombre de servidor especificado, {0}, no es válido.
InvalidServerNameFormat=El nombre de servidor {0} no es un nombre de dominio completo (FQDN). Especifique todos los nombres de servidor con el formato FQDN.
ErrorCode=Error

    #
    #High availability Validations
    #
InvalidSqlFilePath=La ruta de acceso {0} especificada para el parámetro -DatabaseFilePath debe contener el archivo de base de datos de SQL Server.
BothConnStringNullErr=Proporciona un valor para los parámetros -DatabaseconnectionString o -DatabaseSecondaryConnectionString y vuelve a intentarlo.
DoNotSetSecondaryDatabaseConnStr=Esta es una configuración de servidor de base de datos específica para obtener alta disponibilidad. Establecer el valor DatabaseSecondaryConnectionString no es compatible. Actualiza el valor de DatabaseConnectionSring solamente.
InvalidDatabaseConnStr=Especifica una cadena de conexión de base de datos válida para el parámetro -DatabaseConnectionSring.
DedicatedServerHAConfigDoNotSetSecConnStr=El valor proporcionado para el parámetro -DatabaseConnectionString indica una configuración del servidor de base de datos específica. Para este tipo de configuración no se admite -DatabaseSecondaryConnectionString.
SharedServerConnStringDoNotSetDbFilePath=El valor proporcionado para el parámetro -DatabaseConnectionString indica una configuración del servidor de base de datos compartida. Para este tipo de configuración no se admite -DatabaseFilePath.
RemoveConnStringOnDedicatedDBServer=La configuración de alta disponibilidad usa un servidor de bases de datos dedicado. No se puede eliminar la cadena de conexión en esta configuración.
RemovePrimaryConnStringNotSupported=En este momento no se puede quitar la cadena de conexión principal. Solo es posible quitar las cadenas de conexión secundarias.
RemoveRDSecondaryDBConnectionStringMessageWhatif=La siguiente cadena de conexión de base de datos secundaria se quitará de la implementación {0}.
RemoveRDSecondaryDBConnectionStringMessage=La siguiente cadena de conexión de base de datos secundaria se quitará de la implementación {0}. ¿Quieres continuar?
RemoveRDSecondaryDBConnectionStringCaption=Advertencia: eliminando de la implementación la cadena de conexión de base de datos secundaria...
SecondaryConnectionStringNotSet=La cadena de conexión secundaria no está establecida en la implementación.
ConnStringsResetFailed=Error al actualizar las cadenas de conexión de base de datos. Comprueba los registros de eventos del Agente de conexión a Escritorio remoto para obtener más información.
UpdateDatabaseConnStringsOnAllBrokers=Actualizando las cadenas de conexión de base de datos en todos los agentes de la implementación...
UpdatingDBConnStringsOnBroker=Actualizando las cadenas de conexión de base de datos en el servidor del Agente de conexión a Escritorio remoto {0}.
DoneUpdatingConnStringsOnBroker=Se actualizaron correctamente las cadenas de conexión de base de datos que se encuentran en el servidor del Agente de conexión a Escritorio remoto {0}.
FailedUpdatingConnStringOnBroker=Error al actualizar las cadenas de conexión de base de datos en el servidor del Agente de conexión a Escritorio remoto. Vuelve a ejecutar este cmdlet explícitamente en el servidor {0}.
SuccessfullyUpdatedConnStringsAllBrokers=Se actualizaron correctamente las cadenas de conexión de base de datos en todos los servidores del Agente de conexión a Escritorio remoto de la implementación. Se estableció la conexión a la base de datos y la implementación funciona correctamente.
SuccessfullyUpdatedConnStringsOnBroker=Se actualizaron correctamente las cadenas de conexión de base de datos que se encuentran en el servidor del Agente de conexión a Escritorio remoto {0} especificado.
FailedUpdatingConnStringsOnBrokers=Error al actualizar las cadenas de conexión de base de datos en los siguientes servidores del Agente de conexión a Escritorio remoto: {0}. Vuelve a ejecutar este cmdlet explícitamente en cada servidor.
LegacyOSNotSupported=El servidor del Agente de conexión a Escritorio remoto {0} de la implementación actual no está ejecutando Windows 2016 o una versión posterior. Este cmdlet no es compatible con versiones heredades del sistema operativo Windows.
DatabaseFilePathMandotoryForLegacyOSBrokers=El parámetro - DatabaseFilePath es obligatorio para el servidor del Agente de conexión a Escritorio remoto {0} que no esté ejecutando Windows 2016 o una versión posterior del sistema operativo. Proporciona un valor válido para este parámetro y vuelve a intentarlo.
RestoreDatabaseConnectionLegacyOSNotSupported=No se admite el parámetro - RestoreDatabaseConnection en el servidor de un Agente de conexión a Escritorio remoto {0} ejecute versiones heredades del sistema operativo Windows. Esta característica solo se admite en Windows 2016 o en Agentes de conexión a Escritorio remoto posteriores.
SharedDatabaseServerOnLegacyOSNotSupported=La cadena de conexión a bases de datos proporcionada en el parámetro - DatabaseConnectionString no se admite en el servidor del Agente de conexión a Escritorio remoto {0} que ejecuta la versión heredada del sistema operativo Windows. Esta característica solo se admite en Windows 2016 o en Agentes de conexión a Escritorio remoto posteriores.
SecondaryDBConnStringLegacyOSNotSupported=El parámetro - DatabaseSecondaryConnectionString no se admite en el servidor del Agente de conexión a Escritorio remoto {0} que ejecuta la versión heredada del sistema operativo Windows. Este parámetro solo se admite en Windows 2016 o en implementaciones posteriores.
RestoreOnAllBrokersWithoutRestoreDBConnString=No se puede usar la marca - RestoreDBConnectionOnAllBrokers si no se ha proporcionado el parámetro - RestoreDatabaseConnection.
RestoreDatabaseConnectionOnAllBrokersNotSupported=No se admite el parámetro - RestoreDBConnectionOnAllBrokers en el servidor de un Agente de conexión a Escritorio remoto {0} que ejecute versiones heredades del sistema operativo Windows. Esta característica se admite únicamente en Windows 2016 o en Agentes de conexión a Escritorio remoto posteriores, y solo cuando se proporciona el parámetro - RestoreDatabaseConnection.
BrokerIsNotHAConfigured=El servidor del Agente de conexión a Escritorio remoto {0} de la implementación actual no está configurado para tener una disponibilidad alta. No se admite el cmdlet.
BrokerNotMatchingOSVersionErr=El servidor {0} debe tener la misma versión de sistema operativo que el servidor de Agente de conexión a Escritorio remoto activo {1}: {2}.
NotMatchingDatabaseNameErr=El nombre de la base de datos no coincide. Debes especificar el mismo nombre de base de datos en las dos cadenas de conexión de la base de datos.
SharedDatabaseConnStrFormatError=La cadena de conexión de bases de datos especificada usa la autenticación de Windows que corresponde a la configuración de bases de datos dedicadas. Debes proporcionar una cadena de conexión con una autenticación específica de bases de datos para la configuración de bases de datos compartidas; esta última contiene el nombre de usuario y la contraseña.
DedicatedDatabaseConnStrFormatError=La cadena de conexión de bases de datos especificada usa la autenticación específica de bases de datos, la cual corresponde a la configuración de bases de datos compartidas. Debes proporcionar una cadena de conexión con una autenticación de Windows para la configuración de bases de datos dedicadas.

    #
    # User Group general errors/warnings
    #
UnableToMapSid=No se puede convertir el SID en un nombre de cuenta válido.\nSID: {0}\nError: {1}
InvalidUserGroup=El grupo de usuarios especificado {0} no se pudo asignar a un SID válido.\nError: {1}
InvalidUserGroupNoErr=Uno de los grupos de usuarios especificado {0} no se pudo asignar a un SID válido.
    
    #
    # Custom RDP Properties
    #
GetCustomRdpPropertiesInvalidCollectionError=No se pudieron obtener las propiedades de RDP personalizadas para la colección {0}; la colección no existe.
GetCustomRdpPropertiesWmiError=No se pudieron obtener las propiedades de RDP personalizadas para la colección {0}.\nError: {1}
SetCustomRdpPropertiesInvalidCollectionError=No se pudieron establecer las propiedades de RDP personalizadas para la colección {0} en el servidor de Agente de conexión a Escritorio remoto {1}; la colección no existe en ese servidor de Agente de conexión a Escritorio remoto.
SetCustomRdpPropertiesWmiError=No se pudieron establecer las propiedades de RDP personalizadas para la colección {0} en el servidor de Agente de conexión a Escritorio remoto {1}.\nError: {2}
SetCustomRdpPropertiesForBrokerSuccess=Las propiedades de RDP personalizadas se aplicaron correctamente al servidor de Agente de conexión a Escritorio remoto {0}.
SetCustomRdpPropertiesInvalidBrokers=No se pudieron establecer las propiedades de RDP personalizadas para la colección {0} porque uno o varios servidores de Agente de conexión a Escritorio remoto son inaccesibles o están mal configurados. Quite estos servidores de la implementación mediante el cmdlet Remove-RDServer e inténtelo de nuevo.\nServidores de Agente de conexión a Escritorio remoto inaccesibles: {1}\nServidores de Agente de conexión a Escritorio remoto mal configurados: {2}
SetCollectionCustomRdpPropertyFailure=No se pudo establecer la propiedad de RDP personalizada en el servidor de Agente de conexión a Escritorio remoto {0}; error en el intento {1}. Error: {2}
UpdateCustomRdpPropertyFailure=No se pudo actualizar la configuración de RDP personalizada en el servidor de Agente de conexión a Escritorio remoto {0}. Quítelo de la implementación e intente volver a agregarlo.
UpdatingCollectionCustomRdpPropertyOnBroker=Actualizando las propiedades de RDP personalizadas para la colección {0} en el servidor de Agente de conexión a Escritorio remoto {1}.

    #
    # Licensing
    #
InvalidLicenseServer=Los servidores '{0}' no son servidores de licencia válidos.
InvalidLicensingMode=El modo de administración de licencias especificado no es válido. Los modos de administración de licencias válidos son PerDevice y PerUser.
LicensingModeNotConfigured=El modo de administración de licencias no está configurado. Especifique PerDevice o PerUser para configurar el modo de administración de licencias.
WarnChangingLicenseSettingsMessage=Se va a cambiar la configuración de administración de licencias de la implementación de Escritorio remoto. ¿Desea continuar?


    #
    # RDSH
    #
CollectionDoesNotExist=La colección {0} no existe.
ErrorWmiSessionCollectionServer=Error al buscar el servidor de colecciones de sesiones.\nError: {0}
ErrorWmiDrainModeRDSessionHost=Error al permitir nuevas conexiones para el servidor host de sesión de Escritorio Remoto {0}.\nError: {1}
ErrorWmiRemoveRDSessionHost=Error al quitar el servidor host de sesión de Escritorio remoto {0} de la colección {1}.\nError: {2}
ErrorWmiAddRDSessionHost=Error al agregar el servidor host de sesión de Escritorio remoto {0} de la colección {1}.\nError: {2}
ErrorCreatingRDSHCollection=No se pudo crear la colección de sesiones.
NoServersInRDSHCollection=La colección de sesiones {0} no tiene ningún servidor host de sesión de Escritorio remoto.
RDSHCollectionNotFound=No se encontró la colección de sesiones {0}.
ErrorDeletingRDSHCollection=No se pudo eliminar la colección de sesiones {0}.
RDSHNotFound=El servidor host de sesión de Escritorio remoto {0} no existe en esta implementación.
RDSHAlreadyExistInCollection=El servidor host de sesión de Escritorio remoto {0} ya existe en otra colección.
RDSHCollectionAlreadyExist=Ya existe una colección con el mismo nombre.
RDSHNotFoundInCollection=No existe un servidor host de sesión de Escritorio remoto {0} en esta colección.
RemoveRDSessionCollectionCaption=Advertencia: eliminando colección de sesiones...
RemoveRDSessionCollectionMessage=Se eliminará la colección de sesiones {0}. ¿Desea continuar?
RemoveRDSessionCollectionMessageWhatif=Se eliminará la colección de sesiones {0}.
RemoveRDSessionCollectionServerCaption=Advertencia: eliminando el servidor host de sesión de Escritorio remoto de la colección de sesiones...
RemoveRDSessionCollectionServerMessage=Se eliminará el servidor host de sesión de Escritorio remoto de la colección de sesiones {0}. ¿Desea continuar?
RemoveRDSessionCollectionServerMessageWhatif=El servidor host de sesión de Escritorio remoto especificado se eliminará de la colección de sesiones {0}.
CollectionNotPersonalPool=La colección de escritorios especificada no es una colección de sesión de escritorio.
UserAlreadyAssignedDesktop=El usuario {0} ya está asignado al escritorio {1}.
DesktopAlreadyAssigned=El escritorio {0} ya está asignado al usuario {1}\{2}.
FailedToAddDesktopAssignment=No se pudo agregar la asignación de la sesión de escritorio.
FailedToRemoveDesktopAssignment=No se pudo quitar la asignación de escritorio actual.
MissingUserOrDestkop=Debes especificar un nombre de usuario o un nombre de escritorio al quitar la asignación.
NoDesktopAssignmentFound=No se encontró ninguna asignación.
InvalidCollectionOrConnectionBroker=El agente de conexión {0} o la colección {1} no son válidos.
NotSupportedSessionDesktopCollection={0} no es compatible con la colección de sesiones personales.
RDSHServerNotThreshold=El servidor {0} no es compatible con la colección de sesiones personales.
RemovePersonalDesktopAssignmentMsg1=La asignación de escritorio de la sesión personal para el usuario [{0}] al escritorio [{1}] se eliminará.
RemovePersonalDesktopAssignmentMsg2=La asignación de escritorio de la sesión personal para el usuario [{0}] se eliminará.
RemovePersonalDesktopAssignmentMsg3=La asignación de escritorio de la sesión personal para el escritorio [{0}] se eliminará.
SuccessAddDesktopAssignment=El usuario {0} se ha asignado al escritorio {1} en la colección {2}.
SuccessRemoveDesktopAssignment1=Asignación para el usuario {0} eliminada correctamente
SuccessRemoveDesktopAssignment2=Asignación para el escritorio {0} eliminada correctamente
    

    #
    # RDVH
    #
VirtualDesktopDoesNotExist=El escritorio virtual {0} no existe en la colección de escritorios virtuales {1}.
VirtualDesktopRemoved=El escritorio virtual {0} se eliminó de la colección de escritorios virtuales {1}.
FailedToRemoveVirtualDesktop=No se pudo eliminar el escritorio virtual {0} de la colección de escritorios virtuales {1}.
RDVHCollectionAlreadyExist=Ya existe una colección de escritorios virtuales con el mismo nombre.
DeploymentExportLocationQueryFailed=Obtención de propiedades de implementación: error (código {0}). Consulte más información en el registro de eventos.
SetDeploymentExportLocationSuccess=Establecimiento de propiedades de implementación: correcto. \nUbicación de exportación: {0}
SetDeploymentExportLocationFailed=Establecimiento de propiedades de implementación: error (código {0}). Consulte más información en el registro de eventos.
GrantOUAccessSuccess=Acceso a {1} concedido a la unidad organizativa {0}.
FailedToGrantOUAccess=No se pudo conceder acceso para {1} a la unidad organizativa {0}. Compruebe que el usuario actual es un administrador de dominio o tiene los permisos apropiados en la unidad organizativa.\nCódigo de error: {2}
TestOUAccessSuccess=Prueba correcta de acceso para {1} a la unidad organizativa {0}.
FailedToTestOUAccess=No se pudo probar el acceso para {1} a la unidad organizativa {0}.
InvalidDomainOrOU=El dominio ({0}) y\\o la unidad organizativa ({1}) especificados no son válidos.
UserProfileDiskLocationNotExist=La ubicación {0} no existe.
UserProfileDiskLocationNotWritable=El usuario con sesión iniciada actualmente no puede crear archivos en {0}.
UserProfileDiskLocationInUse=La ubicación especificada del disco de perfil de usuario {0} ya está configurada para otra colección.
LookupTaskWmiError=Error al buscar información de revisión para {0}: {1}
RemoveTaskWmiError=Error al quitar la revisión para {0}: {1}
TaskNotFound=No se encontró la tarea de aplicación de revisión con identificador {0}
CreateTaskWmiError=Error al crear la revisión: {0}
CreateTaskAlreadyExistsError=Ya existe la revisión con el identificador proporcionado: {0}
ModifyTaskWmiError=Error al modificar la revisión: {0}
InvalidLocalStoragePath=La ruta de acceso local {0} no es una ruta de acceso basada en una unidad local. Especifique la ruta de acceso con el formato LetraUnidad:\\Ruta.
UnreachableVmhostLocalPath=La ruta de acceso local {0} no es accesible para el servidor host de virtualización de Escritorio remoto {1}.
InvalidSmbSharePath=La ruta de acceso especificada para el recurso compartido SMB {0} no es válida. Especifique la ruta de acceso con el formato \\\\HostRecursoCompartido\\Ruta.
UnreacahbleSmbSharePath=La ruta de acceso especificada para el recurso compartido SMB {0} es inaccesible. Compruebe que la ruta existe.
UnreachablePath=La ruta {0} especificada no es accesible. Compruebe que la ruta existe.
VmNamePrefixAlreadyExists=El prefijo de nombre de máquina virtual especificado {0} ya está en uso. Especifique un prefijo de nombre de máquina virtual único.
CreatingRdvhCollection=Creando una colección de escritorios virtuales: {0}...
AddingVmToCollection=Agregando el escritorio virtual {0} a la colección...
AddUnmgdVmFailed=No se pudo agregar el escritorio virtual {0} a la colección. Compruebe que el escritorio virtual esté configurado correctamente y que no se encuentre en estado de ejecución.
CreateRdvhCollectionFailed=No se pudo crear la colección de escritorios virtuales. Error: {0}
DeleteRdvhCollectionFailed=No se pudo eliminar la colección de escritorios virtuales. Error: {0}
DeleteMgdVmFromCollectionFailed=No se pudieron eliminar escritorios virtuales de la colección de escritorios virtuales administrada. Error: {0}
DeleteUnmgdVmFromCollectionFailed=No se pudo eliminar el escritorio virtual {0} de la colección de escritorios virtuales. Error: {1}
AddVmToRdvhCollectionFailed=No se pudieron agregar escritorios virtuales a la colección de escritorios virtuales. Error: {0}
DeleteVirtualDesktopFailed=No se pudieron eliminar escritorios virtuales de la colección.
RdvmCollectionNotFound=No se encontró ninguna colección de escritorios virtuales.
SpecifiedVmCollNotFound=No se encontró la colección de escritorios virtuales "{0}".
GetVirtDesktopFailed=No se pudieron obtener escritorios virtuales. Error: {0}
RemovingVirtDesktopFromCollection=Eliminando escritorios virtuales de la colección...
CollectionDeleted=La colección de escritorios virtuales se eliminó correctamente.
SpecifyVmAllocation=No se puede agregar un escritorio virtual existente a una colección de escritorios virtuales administrada. En su lugar, especifique cuántos escritorios virtuales se van a agregar a cada servidor mediante el parámetro VirtualDesktopAllocation.
SpecifyVmList=Especifique la lista de las máquinas virtuales ya existentes que se agregarán a la colección de escritorios virtuales no administrada.
RecreateErrorNotManagedVmCollection=No se puede volver a crear esta colección de escritorios virtuales porque no es una colección administrada.
RecreateErrorNotSharedVmCollection=No se puede volver a crear esta colección de escritorios virtuales porque no es una colección de escritorios virtuales agrupados.
VmCollectionNotFound=No se encontró la colección de escritorios virtuales para {0}. Error: {1}
VmCollectionPropNotFound=No se encontraron las propiedades de la colección de escritorios virtuales.
VmCollectionProvPropNotFound=No se encontraron las propiedades de aprovisionamiento para la colección.
ErrorExportFailed=No se pudo exportar la plantilla de escritorio virtual.
FailedToSaveVmCollProp=No se pudieron guardar las propiedades de la colección.
FailedToScheduleVmCollRecreate=No se pudo programar una operación para volver a crear la colección de escritorios virtuales administrada.
ScheduledVmCollRecreate=La operación para volver a crear la colección de escritorios virtuales administrada se programó correctamente. Use "Get-RDVirtualDesktopCollectionJobStatus" para comprobar el estado del trabajo.
FailedToGetStatusNotManaged=No se puede recuperar el estado de trabajo de una colección de escritorios virtuales porque no es una colección administrada.
FailedToGetCollectionState=No se puede recuperar el estado de trabajo de una colección de escritorios virtuales. Error: {0}
FailedToGetStatusNotShared=No se puede recuperar el estado de actualización de una colección de escritorios virtuales porque no es una colección de escritorios virtuales agrupados.
FailedToGetRecreateProps=No se pudieron recuperar las propiedades del trabajo pendiente para volver a crear.
FailedToGetJobReport=No se pudo recuperar el informe del trabajo.
PDAssignErrorNotPDPool=La colección de escritorios virtuales especificada no es una colección de escritorios virtuales personal.
ErrorNotPDPool=El escritorio virtual {0} especificado no está en una colección de escritorios virtuales personal.
InvalidUserName=Especifique un nombre de usuario correcto con el formato dominio\\usuario.
FailedToFindVirtualDesktop=No se pudo encontrar un escritorio virtual con el nombre {0}. Especifique un nombre de escritorio virtual válido.
FailedToFindVirtualDesktopWmi=No se pudo encontrar un escritorio virtual con el nombre {0}. Especifique un nombre de escritorio virtual válido. Error: {1}
VirtDesktopNotAMemeberOfSpecifiedPool=El escritorio virtual {0} no es miembro de la colección de escritorios virtuales especificada.
UserAlreadyAssigned=El escritorio virtual ya está asignado al usuario {0}\\{1}.
FailedToRemovePDAssignment=No se pudo crear la asignación de escritorio actual.
FailedToSetPDAssignment=No se pudo establecer la asignación de escritorio virtual personal.
SetPDAssignSuccess=Al usuario {0} se le ha asignado el escritorio virtual personal {1} de la colección {2}.
PDAssignErrorNoCurrentAssignment=No se ha asignado al usuario ningún escritorio virtual personal en esta colección.
RemovePDAssignSuccess=Se eliminó correctamente la asignación de escritorio virtual personal.
FailedToGetProvXml=No se pudo generar el XML de aprovisionamiento.
ErrorEmptyVmList=Especifique al menos una máquina virtual para el grupo de escritorios virtuales no administrado.
VirtDesktopAlreadyAMember=El escritorio virtual {0} ya es miembro de la colección {1}.
CentralStorageCanNotBeEmpty=El parámetro CentralStoragePath no puede estar vacío para este tipo de almacenamiento.
InvalidSanStoragePath=Especifique la ruta de almacenamiento SAN central con el formato LetraUnidad:\\AlmacenamientoEnClúster\\VolumenX\\Carpeta.
InvalidUnattendFilePath=La ruta de acceso al archivo de respuesta de instalación desatendida no es válida; especifique la ruta de acceso completa al archivo de respuesta de instalación desatendida.
FailedToLoadUnattendFile=No se pudo cargar el archivo xml de respuesta de instalación desatendida; asegúrese de que el formato es correcto.
InvalidUnattendNoCompName=Especifique un archivo de respuesta de instalación desatendida sin el nombre de equipo.
InvalidUnattendNoDomainJoin=Especifique un archivo de respuesta de instalación desatendida sin información de unión a dominio.
InvalidRdvhFqdn=El nombre de servidor {0} no es un nombre de dominio completo (FQDN). Especifique todos los nombres de servidor con el formato FQDN en el parámetro -VirtualDesktopAllocation.
InvalidRdvhRoleNotFound=No se encontró el nombre de servidor {0} en los servidores host de virtualización de Escritorio remoto de la implementación. Especifique el nombre de servidor correcto en el parámetro -VirtualDesktopAllocation.
InvalidRdvhRoleNotFoundGeneric=No se encontró el nombre de servidor {0} en los servidores host de virtualización de Escritorio remoto de la implementación.
FailedToFindMasterVm=No se encontró una plantilla de escritorio virtual con el nombre {0}.
FailedToGetMasterVmInfo=No se pudo validar la plantilla de escritorio virtual. Error:{0}. \nAsegúrese de que la plantilla de escritorio virtual está generalizada con Sysprep, su estado es detenido, está conectada a la red y tiene al menos 1 GB de RAM.
ErrorMasterVmNotGeneralized=La plantilla de escritorio virtual especificada no está generalizada con Sysprep.
ExportRootNotFound=No se encontró la ruta de exportación de escritorios remotos en las propiedades de implementación.
ExportRootInvalid=La ruta de exportación de la plantilla de escritorio virtual {0} no es válida o no es accesible. Asegúrese de que la ruta sea accesible o especifique una ruta de exportación diferente para la plantilla de escritorio virtual mediante Set-RDVirtualDesktopTemplateExportPath.
FailedToCreateFolder=No se pudo crear la carpeta: {0} \nError: {1}
FailedToGetComputerObject=No se pudo recuperar el objeto de equipo del servidor: {0}
FailedToGetComputerObjectWmi=No se pudo recuperar el objeto de equipo del servidor: {0} \nError: {1}
FailedToSetFolderPermission=No se pudieron establecer los permisos en la carpeta: {0} \nError: {1}
ErrFailedToQueryRunningJob=No se pudieron consultar los trabajos en ejecución para la colección de escritorios virtuales.
ErrProvJobAlreadyScheduled=No se puede realizar la operación en la colección de escritorios virtuales porque ya hay programado un trabajo de aprovisionamiento.
ErrVmCollectionRequiresUserGroups=La lista de grupos de usuarios que especificó para asignar la colección de escritorios virtuales está vacía. La colección debe asignarse al menos a un grupo de usuarios.
FailedToCancelCollJob=El trabajo de recolección no se pudo detener. Error: {0}
ErrCollectionJobCancelInvalidState=La operación de detención no es posible en el estado actual de la colección: {0}
ErrStartTimeGTLogoffTime=Asegúrese de que StartTime es anterior a ForceLogoffTime.
MovingVirtualDesktop=Trasladando el escritorio virtual {0} del servidor {1} a {2}. Esto puede tardar unos minutos...
MovingVirtualDesktopSucceeded=El escritorio virtual se ha trasladado correctamente.
MovingVirtualDesktopFailed=No se pudo trasladar el escritorio virtual. Consulte los registros de eventos en el servidor de origen.
EnsuringGoldCacheExists=Comprobando que existe una copia de la plantilla de escritorio virtual en el servidor de destino {0}...
MoveOperationRequiresCredentials=La operación de traslado de escritorio virtual en el servidor remoto requiere credenciales.
RemoveVmCollMsg=Se eliminará la colección de escritorios virtuales {0}.
RemoveVmsFromCollMsg=Se quitarán los escritorios virtuales especificados de la colección.
RemovePatch=Se eliminará la tarea de aplicación de revisiones especificada.
RemovePatches=Se eliminarán todas las tareas de aplicación de revisiones.
NoAssignedPDFoundInCollection=No se ha asignado ningún escritorio virtual personal a ningún usuario en la colección especificada.
SpecifiedPDNotAssigned=El escritorio virtual especificado no se ha asignado a ningún usuario.
WrnAutoAssignNotApplicable=La autoasignación de un escritorio virtual personal no es aplicable a este tipo de colección.
WrnGrantAdminNotApplicable=No se pueden habilitar privilegios administrativos para este tipo de colección.
RemovePDAssignmentMsg=Se eliminará la asignación de escritorio virtual personal del usuario [{0}] al escritorio virtual [{1}].
ErrReadingConcurrencyFactor=No se pudo leer un factor de simultaneidad del servidor host de virtualización de Escritorio remoto: {0}\nError: {1}
ErrSettingConcurrencyFactor=No se pudo establecer un factor de simultaneidad en el servidor host de virtualización de Escritorio remoto: {0}\nError: {1}
ErrInvalidConcurrencyType=No se esperaba el tipo de valor de simultaneidad "{0}" especificado para {1}. Se esperaba "System.Int32"
ErrInvalidConcurrencyRange=El valor de simultaneidad {0} especificado para {1} está fuera del intervalo. Intervalo válido: [1..100]
SettingConcurrencyFactorSuccess=El factor de simultaneidad se definió correctamente en el servidor host de virtualización de Escritorio remoto: {0}
DeletingConcurrencyFactorSuccess=El factor de simultaneidad se eliminó correctamente del servidor host de virtualización de Escritorio remoto: {0}
SettingConcurrencyFactor=Estableciendo factor de simultaneidad en el servidor host de virtualización de Escritorio remoto: {0}...
UnsupportedVirtualDesktopTemplateOption=El parámetro "{0}" solo se admite para colecciones administradas de escritorios virtuales personales.
ErrSettingReuseVmAdAccount=No se pudo establecer la propiedad Reutilizar escritorio virtual en el servidor de Agente de conexión a Escritorio remoto: {0} \nError: {1}
ErrReadingReuseVmAdAccount=No se pudo leer la propiedad Reutilizar escritorio virtual en el servidor de Agente de conexión a Escritorio remoto: {0} \nError: {1}
WrnOUAccessNotGranted=No se concedió acceso a la unidad organizativa {0}.
ShouldContinueOUAccessNotGranted=No se concedió acceso a la unidad organizativa {0}. ¿Desea pasarlo por alto y continuar?

    #
    # UserVHD Share ACL
    #
GetFolderPathWmiError=Error al recuperar la ruta de acceso de la carpeta: {0}
GetComputerWmiError=Error al recuperar el nombre de equipo de {0}: {1}
GetComputerError=Error al recuperar el nombre de equipo de {0}
FolderPathStatusInvalid=El estado de la ruta de acceso de la carpeta no es válido : {0}
FolderPathTypeInvalid=El tipo de ruta de acceso de la carpeta no es válido : {0}
FolderPathNotShareFormat=El tipo de ruta de acceso de la carpeta no tiene el formato UNC.
ModifyACLFailed=Advertencia: no se pudo modificar la ACL en la carpeta {0}.
FolderPathInUse=La ubicación especificada del disco de perfil de usuario ({0}) ya está en uso.
SidEveryone=S-1-1-0
EveryoneHasAccess=La ubicación de disco de perfil de usuario especificada ({0}) concede permisos de acceso (de lectura o de control total) a todos. Esto no es necesario para un funcionamiento correcto y podría implicar un riesgo de seguridad.
    
ErrReadingIdleVmCount=No se pudo leer el número de escritorios virtuales inactivos del servidor host de virtualización de Escritorio remoto: {0}\nError: {1}
ErrSettingIdleVmCount=No se pudo establecer el número de escritorios virtuales inactivos en el servidor host de virtualización de Escritorio remoto: {0}\nError: {1}
ErrInvalidIdleVmCountType=No se esperaba el tipo de número de escritorios virtuales inactivos "{0}" especificado para {1}. Se esperaba "System.Int32"
IdleVmCountSetSuccess=El número de escritorios virtuales inactivos se definió correctamente en el servidor host de virtualización de Escritorio remoto: {0}
IdleVmCountDeleteSuccess=El número de escritorios virtuales inactivos se eliminó correctamente del servidor host de virtualización de Escritorio remoto: {0}
UpdateVmCollMsg=Todos los escritorios virtuales de la colección de escritorios virtuales {0} se actualizarán con la plantilla de escritorio virtual especificada.
FailedToGetVirtualDesktop=No se pudo recuperar el escritorio virtual {0}.\nError:{1}
DefaultPatchPluginName=Complemento de revisión predeterminado
ErrSettingHostConfiguration=No se pudo establecer "{0}" en el servidor host de virtualización de Escritorio remoto: {1}\nError: {2}
InvalidHostConfigurationSetting="{0}" solo se admite para colecciones de escritorios virtuales administradas con reversión habilitada.
StopProvJobMsg=Se cancelará el trabajo de aprovisionamiento para esta colección.
ModifyRollbackEnableFailed=No se pudo modificar la propiedad Rollback de la colección.\nError: {0}

    #
    # Workspace
    #
GetListOfConnectionBrokersFailed=No se pudo obtener la lista de servidores de Agente de conexión a Escritorio remoto.
GetListOfRDWAServersFailed=No se pudo obtener la lista de servidores de Acceso web de Escritorio remoto.
NoWorkspacesInRDMgmt=No se encontraron áreas de trabajo en el servidor de Agente de conexión a Escritorio remoto {0}.
SetRemoteWebConfigFileFailed=No se pudo actualizar web.config en {0}.
SetWorkspaceNameFailed=No se pudo actualizar el nombre de área de trabajo.
GetWorkspacesWmiError=No se pudieron obtener objetos de área de trabajo en el Agente de conexión a Escritorio remoto {0}.\nError: {1}
WriteWorkspaceWmiError=No se pudo actualizar el área de trabajo en el Agente de conexión a Escritorio remoto {0}.\nError: {1}
UpdateBrokersInProgress=Actualizando el servidor de Agente de conexión a Escritorio remoto {0} de {1}...
UpdateRDWAsInProgres=Actualizando el servidor de Acceso web de Escritorio remoto {0} de {1}...
SetWorkspaceBadServers=No se pudo establecer el nombre de área de trabajo; uno o varios servidores de Agente de conexión a Escritorio remoto o servidores de Acceso web de Escritorio remoto de la implementación no están disponibles o están mal configurados. Elimine estos servidores de la implementación mediante Remove-RDServer e inténtelo de nuevo.\nServidores de Agente de conexión a Escritorio remoto no disponibles: {0}\nServidores de Agente de conexión a Escritorio remoto mal configurados: {1}\nServidores de Acceso web de Escritorio remoto no disponibles: {2}\nServidores de Acceso web de Escritorio remoto mal configurados: {3}
SetWorkspaceOfflineRdwa=No se pudo determinar la existencia del archivo web.config de Acceso web de Escritorio remoto en el servidor {0}.\nError: {1}
SetWorkspaceMissingWebConfig=No se encontró el archivo web.config de Acceso web de Escritorio remoto en el servidor {0}.

    #
    # PublishedDesktop
    #
NoPublishedDesktopsAvailable=No se encontraron escritorios virtuales o físicos publicados.
GetPublishedDesktopsWmiError=Error al recuperar escritorios virtuales o físicos publicados: {0}
WarnUserRemovingAllPublishedAppsWhatif=Si permite que los escritorios virtuales o físicos se muestren en Acceso web de Escritorio remoto, se eliminarán todos los programas RemoteApp publicados.
WarnUserRemovingAllPublishedApps=Si permite que los escritorios virtuales o físicos se muestren en Acceso web de Escritorio remoto, se eliminarán todos los programas RemoteApp publicados. ¿Desea continuar?
WarnUserTitleRemovingPubApps=Advertencia: eliminando programas RemoteApp publicados...
RemovingPubAppsInProgress=Eliminando el programa RemoteApp publicado {0} de {1}...
UpdatingDesktopInProgress=Actualizando la conexión con el escritorio virtual o físico...

    #
    # Firewall enable/disable
    #
FirewallDisableFailedError=No se pudo deshabilitar el firewall en el escritorio virtual {0}.
FirewallDisableFailedWmiError=No se pudo deshabilitar el firewall en el escritorio virtual {0} debido a un error de WMI. \nError: {1}
FirewallDisableFailedErrorCode=No se pudo deshabilitar el firewall en el escritorio virtual {0}. \nError: {1}
FirewallEnableFailedError=No se pudo volver a habilitar el firewall en el escritorio virtual {0}.
FirewallEnableFailedWmiError=No se pudo volver a habilitar el firewall en el escritorio virtual {0} debido a un error de WMI. \nError: {1}
FirewallEnableFailedErrorCode=No se pudo volver a habilitar el firewall en el escritorio virtual {0} debido a un error de WMI. \nError: {1}
    
    #
    # Start Menu Applications
    #
NoVMsFoundInCollectionError=No se encontró ningún escritorio virtual en la colección {0}.
VMNotFoundInCollectionError=No se encontró ningún escritorio virtual con el nombre {0} en la colección {1}.
NoSessionHostsFoundInCollectionError=No se encontró ningún servidor host de sesión de Escritorio remoto en la colección {0}.
NoRunningSessionHostsFoundInCollectionError=No se encontró ningún servidor host de sesión de Escritorio remoto en la colección {0} que acepte conexiones.
StartMenuPreparingVmInProgress=Preparando la máquina virtual '{0}' para poder recuperar las aplicaciones disponibles...
RetreivingAppsInProgress=Recuperando aplicaciones disponibles...
    
    #
    # GateWay Deployment Property Errors
    #
GetGatewayUsageFailed=No se pudo obtener la propiedad de uso de Puerta de enlace de Escritorio remoto. Error: {0}
GetGatewayNameFailed=No se pudo obtener la propiedad de nombre de Puerta de enlace de Escritorio remoto. Error: {0}
GetGatewayAuthModeFailed=No se pudo obtener la propiedad de modo de autenticación de Puerta de enlace de Escritorio remoto. Error: {0}
GetGatewayUseCachedCredsFailed=No se pudo obtener la propiedad de credenciales en caché de uso de Puerta de enlace de Escritorio remoto. Error: {0}
GetGatewayPropertiesWmiError=No se pudieron recuperar las propiedades de Puerta de enlace de Escritorio remoto: {0}
WarnChangingGatewaySettingsMessage=Se va a cambiar la configuración de la implementación de Puerta de enlace de Escritorio Remoto. ¿Desea continuar?
ErrorCustomGatewayProperties=El modo de puerta de enlace es "{0}" pero intentó actualizar una o varias de las siguientes propiedades de Puerta de enlace de Escritorio remoto que solo pueden modificarse cuando el modo de puerta de enlace es "Personalizado": {1}.
ErrorMissingCustomGatewayProperties=Las siguientes propiedades de Puerta de enlace de Escritorio remoto son necesarias cuando el modo de puerta de enlace es "Personalizado": {0}.
    
    #
    # RemoteApp Publishing
    #
LookupCollectionWmiError=Error al buscar la información de la colección: {0}
GetRemoteAppsWmiError=Error al recuperar los programas RemoteApp: {0}
GetFtasWmiError=Error al recuperar las asociaciones de tipo de archivo: {0}
SetFtaDoesNotExistError=La asociación de tipo de archivo especificada no se puede modificar porque no existe:\nNombre de colección: {0}\nAlias de aplicación: {1}\nNombre de extensión de archivo: {2}
InvalidAppObjectError=El objeto de programa RemoteApp {0} está dañado; hace referencia a una colección no existente: {1}.
InvalidFtaObjectError=El objeto de la asociación de tipo de archivo {0} está dañado; hace referencia a una colección no existente: {1}.
TSGetIconResolveEnvVarError=Error al resolver las variables de entorno en la ruta de acceso del icono:\nNombre de equipo: {0}\nRuta del icono: {1}\nError: {2}
TSGetIconError=Error al recuperar el contenido del icono:\nNombre de equipo: {0}\nRuta del icono: {1}\nÍndice del icono: {2}\nError: {3}
TSGetIconNoIconFound=No se encontró el icono especificado:\nNombre de equipo: {0}\nRuta del icono: {1}\nÍndice del icono: {2}
InvalidIconPath=La ruta de acceso de icono especificada, {0}, no es válida. Especifique una ruta de acceso de icono válida.
RemoteAppValidIconRequiredError=Los programas RemoteApp deben tener un icono válido, pero parece que el icono que ha especificado no es válido.
RemoteAppInvalidAlias=El valor de AppAlias especificado, {0}, no es válido. Especifique un alias que tenga al menos 1 carácter de longitud y no contenga ninguno de los siguientes caracteres: {1}
RemoteAppInvalidDisplayName=El valor de DisplayName especificado, {0}, no es válido. Especifique un nombre con una longitud inferior a {1} caracteres y que no contenga ninguno de los siguientes caracteres: {2}
RemoteAppInvalidAppPath=El valor de AppPath especificado, {0}, no es válido. Especifique una ruta de acceso de archivo válida.
RemoteAppInvalidFolder=El valor de Folder especificado, {0}, no es válido. Especifique un nombre de carpeta con una longitud inferior a {1} caracteres, que no sea '.' o '..'  y que no contenga ninguno de los siguientes caracteres: {2}
RemoteAppInvalidFolderLowChars=El valor de Folder especificado, {0}, no es válido. Especifique un nombre de carpeta que no contenga caracteres especiales.
RemoteAppDoesNotExist=El programa RemoteApp especificado no existe.\nNombre de colección: {0}\nAlias de aplicación: {1}
NewRemoteAppDoesNotExist=El programa RemoteApp recién creado no existe.\nNombre de colección: {0}\nAlias de aplicación: {1}
ConfirmRemoveRemoteAppMsg=Programa RemoteApp '{0}' en la colección '{1}'
RemoteAppAlreadyExistsError=Ya existe un programa RemoteApp con el alias '{0}' en la colección '{1}'; especifique un alias o una colección diferente e inténtelo de nuevo.
CouldNotFindRemoteAppByName=No se encontró ningún programa RemoteApp que coincida con el valor de DisplayName '{0}'.
NewAppPreparingVmInProgress=Preparando la máquina virtual '{0}' para poder publicar programas RemoteApp...
GetAppIconInProgress=Generado el icono del programa RemoteApp...
PublishingAppsInProgress=Publicando el programa RemoteApp...
UpdatingAppInProgress=Actualizando el programa RemoteApp...
GetFtaIconInProgress=Generando el icono para la asociación de tipo de archivo...
UpdateFtaInProgress=Actualizando la asociación de tipo de archivo...
ErrorRdshOffline=El servidor host de sesión de Escritorio remoto {0} es inaccesible.\nError: {1}
ErrorRdshMisconfigured=No se encontraron instancias de la clase WMI {0} en el servidor host de sesión de Escritorio remoto {1}.
ErrorInvalidSessionHostsCollection=No se pudo modificar la configuración de publicación de la colección {0} porque uno o varios servidores host de sesión de Escritorio remoto son inaccesibles o están mal configurados. Elimine estos servidores host de sesión de Escritorio remoto de la colección mediante el cmdlet Remove-RDSessionHost e inténtelo de nuevo.\nServidores host de sesión de Escritorio remoto inaccesibles: {1}\nServidores host de sesión de Escritorio remoto mal configurados: {2}
ErrorInvalidSessionHosts=No se pudo modificar la configuración porque uno o varios servidores host de sesión de Escritorio remoto son inaccesibles o están mal configurados. Elimine estos servidores host de sesión de Escritorio remoto de la colección mediante el cmdlet Remove-RDSessionHost e inténtelo de nuevo.\nServidores host de sesión de Escritorio remoto inaccesibles: {0}\nServidores host de sesión de Escritorio remoto mal configurados: {1}
RDSHCollectionNotFoundTryVdi=No se encontró una colección de sesiones {0}. Asegúrese de especificar el parámetro -VirtualDesktopName para las colecciones de escritorios virtuales.

    #
    # Sessions
    #
GetSdSessionWmiError=No se pudieron obtener las sesiones de usuario del Agente de conexión a Escritorio remoto {0}.
SessionAccessDenied=Acceso denegado.
SessionNotExist=La sesión especificada no existe.
SessionVMNotRunning=El escritorio virtual que hospeda la sesión no se está ejecutando.
HostDoesNotExist=El servidor especificado es inaccesible o no existe.
BrokerConnectError=Error al conectar con el servidor de Agente de conexión a Escritorio remoto {0}.
MessageSendSuccess=Mensaje enviado.
MessageSendFailure=Error al enviar el mensaje.
SessionLogoffSuccess=Sesión de usuario cerrada.
SessionLogoffFailure=No se pudo cerrar la sesión de usuario.
SessionDisconnectSuccess=Sesión de usuario desconectada.
SessionDisconnectFailure=No se pudo desconectar la sesión de usuario.
NoUserSessionFound=No se encontraron sesiones de usuario que coincidan con los criterios especificados.
LogoffUsrSessionMsg=Se cerrará la sesión de usuario {0} del servidor {1}.
DisconUsrSessionMsg=Se desconectará la sesión de usuario {0} del servidor {1}.

    #
    # Virtual Desktop Collection   
    #
ErrorRetrievingCollection=No se encontró la colección de escritorios virtuales {0}.
ErrorWritingVDColProps=Error al escribir las propiedades para la colección de escritorios virtuales: {0}.
FailedToSetDeviceRedirectionOptions=No se pudieron establecer las opciones de redirección del dispositivo: {0}
FailedToSetRedirectClientPrinter=No se pudo establecer la redirección de la impresora cliente: {0}
FailedToSetMaxMonitors=No se pudo establecer el número máximo de monitores: {0}
ExceptionDisablingUserVHD=Excepción al tratar de deshabilitar el disco de perfiles de usuario: {0}
FailedToGetDeviceRedirectionOptions=No se pudieron obtener las opciones de redirección de dispositivo: {0}
FailedToGetMaxMonitors=No se pudo obtener el número máximo de monitores: {0}
FailedToGetRedirectClientPrinter=No se pudo obtener la redirección de la impresora cliente: {0}
FailedToRetrieveClientProperties=No se pudieron recuperar las propiedades de cliente: {0}
NoVirtualDesktopsFound=No se encontraron escritorios virtuales que coincidan con los criterios especificados.
'@
