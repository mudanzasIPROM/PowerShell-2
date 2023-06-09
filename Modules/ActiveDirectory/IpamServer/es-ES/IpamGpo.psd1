# Localized	12/07/2019 11:50 AM (GMT)	303:6.40.20520 	IpamGPO.psd1
# Only add new (name,value) pairs to the end of this table
# Do not remove, insert or re-arrange entries
   ConvertFrom-StringData @'
       ###PSLOC start localizing
       #
       # helpID = VersionTooLow
       #
        
    #Error Msg
ErrorMsgServerDoesNotExist=El servidor {0} no existe o no se pudo contactar.
ErrorMsgServerFqdnWrongFormat=El nombre del servidor {0} debe tener formato de 'nombre de dominio completo'.
ErrorMsgCreateGpoFailed=No se pudo crear el GPO. {0}
ErrorMsgImportGpoFailed=No se pudo importar el GPO. {0}
ErrorMsgLinkGpoFailed=No se pudo vincular el GPO. {0}
ErrorMsgRemoveAuthUserFailed=No se pudieron quitar los usuarios autenticados del GPO. {0}
ErrorMsgDeleteUserFailed=No se pudieron agregar usuarios a la lista de delegación. {0}
ErrorMsgDeleteGroupFailed=No se pudo agregar el grupo a la lista de delegación. {0}
ErrorMsgGetDomainFailed=No se pudo recuperar el dominio {0}. {1}
ErrorMsgGetDCServerFailed=No se pudo recuperar el controlador de dominio del dominio {0}. {1}
ErrorMsgDnsAclUpdateFailed=No se pudieron actualizar las ACL de DNS.
ErrorMsgIpamUGCreateFailed=No se pudo crear el grupo universal {0} en {1}. {2}
ErrorMsgCreateUGFailed=No se pudo crear el grupo universal {0}. {1}
ErrorMsgAddIpamToUGFailed=No se pudo agregar el equipo {0} al grupo {1}. {2}
ErrorMsgGetCurrentForestFailed=No se pudo encontrar el bosque actual. Comprueba la conexión al controlador de dominio
ErrorMsgGetCurrentDomainFailed=No se pudo encontrar el dominio actual. Comprueba la conexión al controlador de dominio
ErrorNotEnoughPriviledge=Asegúrese de tener los privilegios suficientes para realizar la operación.
ErrorMsgIpamMachineSIDNotAvaiable=No se pudo encontrar el SID del equipo IPAM a partir del nombre DN {0}. {1}
WarningDnsAclNotFound=No se pudo actualizar la ACL de DNS {0} porque no se encontró el objeto de Active Directory correspondiente. Este es el resultado previsto si no tiene el rol de servidor DNS colocado con un controlador de dominio en el dominio. Para los servidores DNS independientes, agregue el grupo universal de IPAM (IPAMUG) o la cuenta del equipo IPAM al grupo de administradores local del servidor DNS para habilitar el acceso RPC de DNS para IPAM.

    #ShouldProcess/ShouldContinue Messages
Msg_ShouldProcess_WithUserOrGroup=El cmdlet Invoke-IpamGpoProvisioning crea y vincula tres objetos de directiva de grupo en el dominio indicado por el parámetro Dominio, para la configuración del aprovisionamiento de acceso a IPAM en los servidores administrados por IPAM. El cmdlet también modifica la ACL ancha de DNS del dominio para habilitar el acceso de lectura para IPAM. El valor de GpoPrefixName debe ser el mismo que el proporcionado en el Asistente para aprovisionar IPAM al seleccionar la opción de aprovisionamiento basado en directiva de grupo.
Msg_ShouldProcess_WithoutUserAndGroup=El cmdlet Invoke-IpamGpoProvisioning crea y vincula tres objetos de directiva de grupo en el dominio indicado por el parámetro Dominio, para la configuración del aprovisionamiento de acceso a IPAM en los servidores administrados por IPAM. El cmdlet también modifica la ACL ancha de DNS del dominio para habilitar el acceso de lectura para IPAM. El valor de GpoPrefixName debe ser el mismo que el proporcionado en el Asistente para aprovisionar IPAM al seleccionar la opción de aprovisionamiento basado en directiva de grupo..\n\nNo ha especificado los parámetros opcionales DelegatedGpoUser o DelegatedGpoGroup. Los parámetros de delegación se pueden usar para habilitar los privilegios de edición de GPO de IPAM para los usuarios o los grupos que no tengan privilegios de administrador de dominio o empresa, pero que necesiten marcar servidores como administrados o no administrados en IPAM.
Msg_ShouldContinue_WithUserOrGroup=El cmdlet Invoke-IpamGpoProvisioning crea y vincula tres objetos de directiva de grupo en el dominio indicado por el parámetro Dominio, para la configuración del aprovisionamiento de acceso a IPAM en los servidores administrados por IPAM. El cmdlet también modifica la ACL ancha de DNS del dominio para habilitar el acceso de lectura para IPAM. El valor de GpoPrefixName debe ser el mismo que el proporcionado en el Asistente para aprovisionar IPAM al seleccionar la opción de aprovisionamiento basado en directiva de grupo. {0}
Msg_ShouldContinue_WithoutUserAndGroup=El cmdlet Invoke-IpamGpoProvisioning crea y vincula tres objetos de directiva de grupo en el dominio indicado por el parámetro Dominio, para la configuración del aprovisionamiento de acceso a IPAM en los servidores administrados por IPAM. El cmdlet también modifica la ACL ancha de DNS del dominio para habilitar el acceso de lectura para IPAM. El valor de GpoPrefixName debe ser el mismo que el proporcionado en el Asistente para aprovisionar IPAM al seleccionar la opción de aprovisionamiento basado en directiva de grupo..\n\nNo ha especificado los parámetros opcionales DelegatedGpoUser o DelegatedGpoGroup. Los parámetros de delegación se pueden usar para habilitar los privilegios de edición de GPO de IPAM para los usuarios o los grupos que no tengan privilegios de administrador de dominio o empresa, pero que necesiten marcar servidores como administrados o no administrados en IPAM. {0}
ShoudContinueCaption=Confirmar
ShoudContinueConfirmation=¿Desea realizar esta acción?

    #Progress-bar messages
MsgIpamProvisionining=Aprovisionando IPAM...
MsgValidatingParams=Validando parámetros...
MsgCreateUG=Creando grupo universal de IPAM {0}...
MsgAddIpamServerToUG=Agregando servidor IPAM {0} al grupo universal {1}...
MsgCreateGPOs=Creando GPO...
MsgImportGPOs=Importando GPO...
MsgLinkingGPOs=Vinculando GPO al dominio {0}...
MsgAddDelegatedUsers=Agregando usuarios a la lista de delegación...
MsgAddDelegatedGroups=Agregando grupos a la lista de delegación...
MsgModifyDnsAcls=Actualizando ACL de DNS...

'@
