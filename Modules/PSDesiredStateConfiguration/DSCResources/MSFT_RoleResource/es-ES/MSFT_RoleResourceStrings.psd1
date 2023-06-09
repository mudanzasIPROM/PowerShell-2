# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_RoleResourceStrings.psd1
# Localized MSFT_RoleResource.psd1

ConvertFrom-StringData @'
###PSLOC
SetTargetResourceInstallwhatIfMessage=Intentando instalar la característica {0}
SetTargetResourceUnInstallwhatIfMessage=Intentando desinstalar la característica {0}
FeatureNotFoundError=La característica solicitada {0} no se encuentra en el equipo de destino.
FeatureDiscoveryFailureError=Error al obtener información de la característica solicitada {0} desde el equipo de destino. No se admite un patrón de comodines en el nombre de la característica.
FeatureInstallationFailureError=Error para instalar correctamente la característica {0} .
FeatureUnInstallationFailureError=No se puede desinstalar correctamente la característica {0} .
QueryFeature=Consultando la característica {0} con el cmdlet Get-WindowsFeature del Administrador de servidores.
InstallFeature=Intentando instalar la característica {0} con el cmdlet Add-WindowsFeature del Administrador de servidores.
UninstallFeature=Intentando desinstalar la característica {0} con el cmdlet Remove-WindowsFeature del Administrador de servidores.
RestartNeeded=El equipo de destino necesita reiniciarse.
GetTargetResourceStartVerboseMessage=Empezar a ejecutar la función Get en la característica {0}.
GetTargetResourceEndVerboseMessage=Terminar de ejecutar la función Get en la característica {0}.
SetTargetResourceStartVerboseMessage=Empezar a ejecutar la función Set en la característica {0}.
SetTargetResourceEndVerboseMessage=Terminar de ejecutar la función Set en la característica {0}.
TestTargetResourceStartVerboseMessage=Empezar a ejecutar la función Test en la característica {0}.
TestTargetResourceEndVerboseMessage=Terminar de ejecutar la función Test en la característica {0}.
ServerManagerModuleNotFoundDebugMessage=El módulo ServerManager no está instalado en el equipo.
SkuNotSupported=La instalación de roles y características con PowerShell Desired State Configuration se admite únicamente en SKU de servidor. No se admite en SKU de cliente.
SourcePropertyNotSupportedDebugMessage=La propiedad de origen en MSFT_RoleResource no es compatible con este sistema operativo y se omitió.
EnableServerManagerPSHCmdletsFeature=Se detectó sistema operativo de Windows Server 2008R2 Core: se habilitó la característica ServerManager-PSH-Cmdlets.
UninstallSuccess=Se desinstaló correctamente la característica {0}.
InstallSuccess=Se instaló correctamente la característica {0}.
###PSLOC

'@
