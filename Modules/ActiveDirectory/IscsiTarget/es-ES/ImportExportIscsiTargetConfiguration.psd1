# Localized	12/07/2019 11:48 AM (GMT)	303:6.40.20520 	ImportExportIscsiTargetConfiguration.psd1
#/*++
#
#    Copyright (c) Microsoft Corporation.  All rights reserved.
#
#    Abstract:
#
#        String table for the Windows PowerShell script enables persistence of
#        iSCSI Target settings for import and export across computers.
#
#--*/

#
# Data table for the format strings
#
ConvertFrom-StringData @'
###PSLOC - Localizable string
ComputerNotReachable=No puede obtenerse acceso al equipo especificado '{0}'. Asegúrese de escribir un nombre de equipo válido y de que éste esté iniciado.
TargetNotInstalled=Microsoft iSCSI Target Server aparentemente no está instalado.
VersionUnsupported=La versión de Microsoft iSCSI Target Server '{0}' no es compatible.
SettingsVersionUnsupported=La configuración de la versión de Microsoft iSCSI Target Server '{0}' no puede importarse en esta plataforma.
FileNotFound=El archivo especificado '{0}' no existe.
ResourceGroupNotFoundTarget=No pudo encontrarse el grupo de recursos '{0}' al que hace referencia el destino iSCSI '{1}'.
ResourceGroupNotFoundVirtualDisk=No pudo encontrarse el grupo de recursos '{0}' al que hace referencia el disco virtual '{1}'.
DevicePathAlreadyExists=El disco virtual con la ruta de acceso del dispositivo '{0}' ya existe.
NotDeletedDevicePathAlreadyExists=El disco virtual con la ruta de acceso del dispositivo '{0}' ya existe y no se eliminó durante el modo Forzar.
DevicePathInvalidType=El disco virtual con la ruta de acceso del dispositivo '{0}' tiene un tipo de VHD no válido de '{1}'.
NewWTDiskMethodInvocationFailure=Error al invocar Wt_Disk::NewWTDisk/NewDiffWTDisk para la ruta de acceso del dispositivo '{0}'.
NewWTDiskMethodInvocationFailureMsg=Error al invocar Wt_Disk::NewWTDisk/NewDiffWTDisk para la ruta de acceso del dispositivo '{0}'. Error:\r\n{1}
NewHostMethodInvocationFailure=Error al invocar Wt_Host::NewHost para el nombre del destino iSCSI '{0}'.
NewHostMethodInvocationFailureMsg=Error al invocar Wt_Host::NewHost para el nombre del destino iSCSI '{0}'. Error: {1}
NewHostPutInvocationFailureMsg=Error en una o más propiedades de configuración. Los valores predeterminados están en efecto. Mensaje de excepción: {0}
VirtualDiskDeleteInvocationFailureMsg=No se eliminó el disco virtual existente con la ruta de acceso del dispositivo '{0}' durante el modo Forzar. Error:\r\n{1}
TargetDeleteInvocationFailureMsg=El nombre del destino iSCSI '{0}' existente no se eliminó durante el modo Forzar. Error:\r\n{1}
TargetNameAlreadyExists=El nombre del destino iSCSI '{0}' ya existe.
NotDeletedTargetNameAlreadyExists=El nombre del destino iSCSI '{0}' ya existe y no se eliminó durante el modo Forzar.
TargetIQNNameAlreadyExists=El nombre IQN del destino iSCSI '{0}' ya existe.
TargetLunMappingError=La asignación del NUL para el id. de disco '{0}' no se encontró después de la importación. Esto puede deberse a una instantánea exportada o un error de importación.
TargetChapError=El destino iSCSI tenía la autenticación CHAP habilitada con el nombre de usuario '{0}' y requiere configuración manual.
TargetReverseChapError=El destino iSCSI tenía autenticación inversa de CHAP habilitada con el nombre de usuario '{0}' y requiere configuración manual.
TargetIdMethodError=No se permite el método de identificación del iniciador iSCSI del tipo '{0}'.
SettingsFileExists=El archivo de configuración '{0}' especificado existe y no puede sobrescribirse a menos que se especifique el modo Forzar.
SettingsFileFolderNotFound=La carpeta '{0}' especificada para el archivo de configuración no existe.
HeaderStandalone=\r\nExportando la configuración de destino iSCSI en el archivo '{0}'.\r\nEsto puede demandar mucho tiempo.\r\nConfiguración: equipo independiente '{1}'.
HeaderClusterName=\r\nExportando la configuración de destino iSCSI en el archivo '{0}'.\r\nEsto puede demandar mucho tiempo.\r\nConfiguración: clúster de conmutación por error '{1}': todos los recursos de propiedad del nodo de clúster con propiedad de 'nombre de clúster'.
HeaderNodeName=\r\nExportando la configuración de destino iSCSI en el archivo '{0}'.\r\nEsto puede demandar mucho tiempo.\r\nConfiguración: clúster de conmutación por error '{1}': todos los recursos de propiedad del nodo de clúster '{2}'.
HeaderClientAccessPointName=\r\nExportando la configuración de destino iSCSI en el archivo '{0}'.\r\nEsto puede demandar mucho tiempo.\r\nConfiguración: clúster de conmutación por error '{1}': solamente los recursos de propiedad del punto de acceso cliente '{2}' en el grupo de recursos'{3}'.
FooterExportedTargets=\r\nNúmeros de destinos iSCSI guardados durante la exportación: {0}.\r\nNombres de destinos iSCSI:
FooterExportedVirtualDisks=\r\nNúmeros de discos virtuales guardados durante la exportación: {0}.\r\nRutas de acceso del dispositivo del disco virtual:
FooterNotExportedVirtualDisks=\r\nNúmeros de discos virtuales no guardados durante la exportación: {0}.\r\nRutas de acceso del dispositivo del disco virtual:
ImportHeader=\r\nImportando parámetros de iSCSI desde el archivo '{0}'.\r\nEsto puede demandar mucho tiempo.
FooterImportedTargets=\r\nNúmero de destinos iSCSI importados: {0}.\r\nDestinos iSCSI:
FooterNotImportedTargets=\r\nNúmero de destinos iSCSI no importados: {0}.\r\nDestinos iSCSI:
FooterImportedVirtualDisks=\r\nNúmero de discos virtuales importados: {0}.\r\nDiscos virtuales:
FooterNotImportedVirtualDisks=\r\nNúmero de discos virtuales no importados: {0}.\r\nDiscos virtuales:
FooterNotImportedResourceGroups=\r\nNúmero de grupos de recursos no encontrados después de la importación: {0}.\r\nGrupos de recursos:
TargetError=\x20\x20\x20\x20\x20\x20\x20\x20Error: {0}
TargetNameError=\x20\x20\x20\x20{0}. Error: {1}
VirtualDiskNameError=\x20\x20\x20\x20{0}. Error: {1}\r\n
ErrorHeader=\x20\x20\x20\x20Se creó el destino iSCSI, pero con los siguientes errores:
TargetSingleError=\x20\x20\x20\x20\x20\x20\x20\x20{0}
AllTargetServerResourcesMustBeOnline=El recurso del servidor del destino iSCSI de nombre '{0}' no está conectado. Conéctelo y vuelva a intentar la operación de importación o exportación.
NameResolutionFailed=Error en la resolución de nombres de '{0}', puede que no esté en línea o la red esté fuera de servicio.
###PSLOC - End of localizable string
'@
