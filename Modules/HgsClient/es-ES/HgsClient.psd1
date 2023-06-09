# Localized	12/07/2019 11:49 AM (GMT)	303:6.40.20520 	HgsClient.psd1
#/*++
#
#    Copyright (c) Microsoft Corporation.  All rights reserved.
#
#    Abstract:
#
#        String table for the Host Guardian Client (HGS) PowerShell
#
#--*/

#
# Data table for the format strings
#
ConvertFrom-StringData @"
    ###PSLOC - Localizable string
ErrorSetHostKeyAlreadySet=Ya se ha establecido una clave de host. Para especificar una nueva, primero ejecuta Remove-HgsClientHostKey.
ErrorSetHostKeyMissingPrivateKey=Se encontró un certificado con la huella digital {0}, pero la clave privada no era utilizable.
ErrorSetHostKeyThumbprintInvalid=No se pudo encontrar ningún certificado con la huella digital {0}.
ErrorGetHostKeyNotSet=No se ha establecido ninguna clave de host. Para establecer una clave de host, use Set-HgsClientHostKey.
ErrorGetHostKeyNotFound=No se encuentra el certificado de clave del host con la huella digital '{0}'. Vuelve a instalar el certificado en LocalMachine\\My o usa Remove-HgsClientHostKey y Set-HgsClientHostKey para configurar una nueva clave de host.
WarningRemoveHostKeyProvided=El certificado con la huella digital {0} no se eliminó porque no lo generó Set-HgsClientHostKey.
    ###PSLOC - End of localizable string
"@
