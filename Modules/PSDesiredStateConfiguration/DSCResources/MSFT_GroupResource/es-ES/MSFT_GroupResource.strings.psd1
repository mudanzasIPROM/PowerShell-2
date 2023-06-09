# Localized	12/07/2019 11:52 AM (GMT)	303:6.40.20520 	MSFT_GroupResource.strings.psd1
# Localized resources for MSFT_GroupResource

ConvertFrom-StringData @'
###PSLOC
GroupWithName=Grupo: {0}
RemoveOperation=Quitar
AddOperation=Agregar
SetOperation=Establecer
GroupCreated=El grupo {0} se creó correctamente.
GroupUpdated=Las propiedades del grupo {0} se actualizaron correctamente.
GroupRemoved=El grupo {0} se quitó correctamente.
NoConfigurationRequired=El grupo {0} existe en este nodo con las propiedades deseadas. No se requiere ninguna acción.
NoConfigurationRequiredGroupDoesNotExist=El grupo {0} no existe en este nodo. No se requiere ninguna acción.
CouldNotFindPrincipal=No se pudo encontrar un entidad de seguridad con el nombre proporcionado [{0}]
MembersAndIncludeExcludeConflict=Los parámetros {0} y {1}, y/o {2} están en conflicto. No se debe usar el parámetro {0} en ninguna combinación con los parámetros {1} y {2}.
MembersIsNull=El valor del parámetro Members es null. Se debe proporcionar el parámetro {0} si no se proporciona {1} ni {2}.
MembersIsEmpty=El parámetro Members está vacío. Debe especificarse al menos un miembro del grupo.
MemberNotValid=El miembro del grupo no existe o no se puede resolver: {0}.
IncludeAndExcludeConflict=La entidad de seguridad {0} se incluye en los valores de los parámetros {1} y {2}. La misma entidad de seguridad no se debe incluir en los valores de ambos parámetros ({1} y {2}).
IncludeAndExcludeAreEmpty=MembersToInclude y MembersToExclude son null o están vacíos. Debe especificarse un miembro en al menos uno de estos parámetros"
InvalidGroupName=No se puede usar el nombre {0}. Los nombres no pueden estar compuestos solo de puntos y espacios, ni contener estos caracteres: {1}
GroupExists=Existe un grupo con el nombre {0}.
GroupDoesNotExist=No existe un grupo con el nombre {0}.
PropertyMismatch=Se espera que el valor de la propiedad {0} sea {1}, pero es {2}.
MembersNumberMismatch=Propiedad {0}. El número de miembros de grupo único proporcionados {1} es distinto del número de miembros de grupo real {2}.
MembersMemberMismatch=Al menos un miembro {0} del parámetro {1} proporcionado no tiene una coincidencia en el grupo existente {2}.
MemberToExcludeMatch=Al menos un miembro {0} del parámetro {1} proporcionado tiene una coincidencia en el grupo existente {2}.
ResolvingLocalAccount=Resolviendo {0} como cuenta local.
ResolvingDomainAccount=Resolviendo {0} en el dominio {1}.
ResolvingDomainAccountWithTrust=Resolviendo {0} con confianza de dominio.
DomainCredentialsRequired=Se necesitan credenciales para resolver la cuenta de dominio {0}.
UnableToResolveAccount=No se pudo resolver la cuenta '{0}'. Error con el mensaje: {1} (código de error ={2})
###PSLOC

'@
