# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_RegistryResource.strings.psd1
# Localized resources for MSFT_EnvironmentResource

ConvertFrom-StringData @'
###PSLOC
ParameterValueInvalid=(ERROR) El parámetro '{0}' tiene un valor no válido '{1}' para el tipo '{2}'
InvalidPSDriveSpecified=(ERROR) Se especificó un PSDrive no válido ('{0}') en la clave del Registro '{1}'
InvalidRegistryHiveSpecified=(ERROR) Se especificó un subárbol del Registro no válido en la clave del Registro '{0}'
SetRegValueFailed=(ERROR) Error al establecer el valor '{0}' de la clave del Registro en el valor '{1}' del tipo '{2}'
SetRegValueUnchanged=(UNCHANGED) No hay cambios en el valor '{0}' de la clave del Registro que contiene '{1}'
SetRegKeyUnchanged=(UNCHANGED) No hay cambios en la clave del Registro '{0}'
SetRegValueSucceeded=(SET) Establecer el valor '{0}' de la clave del Registro en '{1}' del tipo '{2}'
SetRegKeySucceeded=(SET) Crear la clave del Registro '{0}'
SetRegKeyFailed=(ERROR) Error al crear la clave del Registro '{0}'
RemoveRegKeyTreeFailed=(ERROR) La clave del Registro '{0}' tiene subclaves, por lo que no se puede quitar sin la marca Force
RemoveRegKeySucceeded=(REMOVAL) Se quitó la clave del Registro '{0}'
RemoveRegKeyFailed=(ERROR) Error al quitar la clave del Registro '{0}'
RemoveRegValueSucceeded=(REMOVAL) Se quitó el valor '{0}' de la clave del Registro
RemoveRegValueFailed=(ERROR) Error al quitar el valor '{0}' de la clave del Registro
RegKeyDoesNotExist=La clave del Registro '{0}' no existe
RegKeyExists=La clave del Registro '{0}' existe
RegValueExists=Se encontró el valor '{0}' de la clave del Registro con el tipo '{1}' y los datos '{2}'
RegValueDoesNotExist=El valor '{0}' de la clave del Registro no existe
RegValueTypeMismatch=El valor '{0}' de la clave del Registro del tipo '{1}' no existe
RegValueDataMismatch=El valor '{0}' de la clave del Registro del tipo '{1}' no contiene los datos '{2}'
DefaultValueDisplayName=(Predeterminado)
###PSLOC
'@
