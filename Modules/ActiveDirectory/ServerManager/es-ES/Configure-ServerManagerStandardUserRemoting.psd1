# Localized	12/07/2019 11:46 AM (GMT)	303:6.40.20520 	Configure-ServerManagerStandardUserRemoting.psd1


ConvertFrom-StringData @'
###PSLOC
ErrorOnUsernameMessage=El objeto especificado no existe o no es un usuario: {0}
ConfirmEnableMessage=¿Agregar usuarios a grupos {0}?\nEsta acción también concede a los usuarios los derechos de acceso "Habilitar cuenta" y "Seguridad de lectura" en el espacio de nombres de WMI root\\cimv2, así como derechos de acceso a lo siguiente en el Administrador de control de servicios: SC_MANAGER_CONNECT, SC_MANAGER_ENUMERATE_SERVICE, SC_MANAGER_QUERY_LOCK_STATUS y STANDARD_RIGHTS_READ
ConfirmDisableMessage=¿Quitar usuarios de los grupos {0}?\nEsta acción también quita a estos usuarios todos los derechos de acceso en el espacio de nombres de WMI root\\cimv2, así como todos los derechos de acceso del Administrador de control de servicios.
ShouldProcessForUserMessage=Habilitar administración remota para el usuario estándar {0}
ShouldProcessForUserMessageDisable=Deshabilitar administración remota para el usuario estándar {0}
###PSLOC

'@
