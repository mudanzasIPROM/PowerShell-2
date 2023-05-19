##########################################################################
# DELL PROPRIETARY INFORMATION
#
# This software is confidential.  Dell Inc., or one of its subsidiaries, has supplied this
# software to you under the terms of a license agreement,nondisclosure agreement or both.
# You may not copy, disclose, or use this software except in accordance with those terms.
#
# Copyright 2020 Dell Inc. or its subsidiaries.  All Rights Reserved.
#
# DELL INC. MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE SOFTWARE,
# EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.
# DELL SHALL NOT BE LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING,
# MODIFYING OR DISTRIBUTING THIS SOFTWARE OR ITS DERIVATIVES.
#
#
#
##########################################################################

<#
This is a Resource designer script which generates a mof schema for DCPP_POSTBehavior resource in DellBIOSProvider module.


#>

$category = New-xDscResourceProperty -name Category -Type String -Attribute Key
$integratedNIC = New-xDscResourceProperty -name IntegratedNIC -Type String -Attribute Write -ValidateSet @("Enabled", "Enabled with PXE", "Enabled with ImageServer", "Enabled with RPL Boot", "Enabled with ISCSI Boot")
$uefiNetworkStack = New-xDscResourceProperty -name UEFINetworkStack -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$parallelPort = New-xDscResourceProperty -name ParallelPort -Type String -Attribute Write -ValidateSet @("Disabled", "AT", "PS2", "ECP")
$serialPort1 = New-xDscResourceProperty -name SerialPort1 -Type String -Attribute Write -ValidateSet @("Disabled", "COM1", "COM2", "COM3", "COM4", "Auto")
$sataOperation = New-xDscResourceProperty -name SATAOperation -Type String -Attribute Write -ValidateSet @("Disabled", "ATA", "AHCI", "RAID On")
$sata0 = New-xDscResourceProperty -name SATA0 -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$sata1 = New-xDscResourceProperty -name SATA1 -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$sata2 = New-xDscResourceProperty -name SATA2 -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$sata3 = New-xDscResourceProperty -name SATA3 -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$smartReporting = New-xDscResourceProperty -name SMARTReporting -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$usbPowerShare = New-xDscResourceProperty -name USBPowerShare -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$audio = New-xDscResourceProperty -name Audio -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$keyboardIllumination = New-xDscResourceProperty -name KeyboardIllumination -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$keyboardBacklightwithAC = New-xDscResourceProperty -name KeyboardBacklightWithAC -Type String -Attribute Write -ValidateSet @("Enabled", "Disabled")
$Password = New-xDscResourceProperty -Name Password -Type string -Attribute Write -Description "Password"
$SecurePassword = New-xDscResourceProperty -Name SecurePassword -Type string -Attribute Write -Description "SecurePassword"
$PathToKey = New-xDscResourceProperty -Name PathToKey -Type string -Attribute Write



$properties = @($category, $integratedNIC, $uefiNetworkStack, $parallelPort, $serialPort1, $sataOperation, $sata0, $sata1, $sata2, $sata3, $smartReporting, $usbPowerShare, $audio, $keyboardIllumination, $keyboardBacklightwithAC,$Password,$SecurePassword,$PathToKey)

New-xDscResource -ModuleName DellBIOSProviderX86 -Name DCPP_SystemConfiguration -Property $properties -Path 'C:\Program Files\WindowsPowerShell\Modules' -FriendlyName "SystemConfiguration" -Force -Verbose

# SIG # Begin signature block
# MIIkoQYJKoZIhvcNAQcCoIIkkjCCJI4CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD+2fqOwQfmxNpu
# 6I3TqIEsegW3ha8hbT3Vm0Ql+fGWm6CCExYwggXfMIIEx6ADAgECAhBOQOQ3VO3m
# jAAAAABR05R/MA0GCSqGSIb3DQEBCwUAMIG+MQswCQYDVQQGEwJVUzEWMBQGA1UE
# ChMNRW50cnVzdCwgSW5jLjEoMCYGA1UECxMfU2VlIHd3dy5lbnRydXN0Lm5ldC9s
# ZWdhbC10ZXJtczE5MDcGA1UECxMwKGMpIDIwMDkgRW50cnVzdCwgSW5jLiAtIGZv
# ciBhdXRob3JpemVkIHVzZSBvbmx5MTIwMAYDVQQDEylFbnRydXN0IFJvb3QgQ2Vy
# dGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHMjAeFw0yMTA1MDcxNTQzNDVaFw0zMDEx
# MDcxNjEzNDVaMGkxCzAJBgNVBAYTAlVTMRYwFAYDVQQKDA1FbnRydXN0LCBJbmMu
# MUIwQAYDVQQDDDlFbnRydXN0IENvZGUgU2lnbmluZyBSb290IENlcnRpZmljYXRp
# b24gQXV0aG9yaXR5IC0gQ1NCUjEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIK
# AoICAQCngY/3FEW2YkPy2K7TJV5IT1G/xX2fUBw10dZ+YSqUGW0nRqSmGl33VFFq
# gCLGqGZ1TVSDyV5oG6v2W2Swra0gvVTvRmttAudFrnX2joq5Mi6LuHccUk15iF+l
# OhjJUCyXJy2/2gB9Y3/vMuxGh2Pbmp/DWiE2e/mb1cqgbnIs/OHxnnBNCFYVb5Cr
# +0i6udfBgniFZS5/tcnA4hS3NxFBBuKK4Kj25X62eAUBw2DtTwdBLgoTSeOQm3/d
# vfqsv2RR0VybtPVc51z/O5uloBrXfQmywrf/bhy8yH3m6Sv8crMU6UpVEoScRCV1
# HfYq8E+lID1oJethl3wP5bY9867DwRG8G47M4EcwXkIAhnHjWKwGymUfe5SmS1dn
# DH5erXhnW1XjXuvH2OxMbobL89z4n4eqclgSD32m+PhCOTs8LOQyTUmM4OEAwjig
# nPqEPkHcblauxhpb9GdoBQHNG7+uh7ydU/Yu6LZr5JnexU+HWKjSZR7IH9Vybu5Z
# HFc7CXKd18q3kMbNe0WSkUIDTH0/yvKquMIOhvMQn0YupGaGaFpoGHApOBGAYGuK
# Q6NzbOOzazf/5p1nAZKG3y9I0ftQYNVc/iHTAUJj/u9wtBfAj6ju08FLXxLq/f0u
# DodEYOOp9MIYo+P9zgyEIg3zp3jak/PbOM+5LzPG/wc8Xr5F0wIDAQABo4IBKzCC
# AScwDgYDVR0PAQH/BAQDAgGGMBIGA1UdEwEB/wQIMAYBAf8CAQEwHQYDVR0lBBYw
# FAYIKwYBBQUHAwMGCCsGAQUFBwMIMDsGA1UdIAQ0MDIwMAYEVR0gADAoMCYGCCsG
# AQUFBwIBFhpodHRwOi8vd3d3LmVudHJ1c3QubmV0L3JwYTAzBggrBgEFBQcBAQQn
# MCUwIwYIKwYBBQUHMAGGF2h0dHA6Ly9vY3NwLmVudHJ1c3QubmV0MDAGA1UdHwQp
# MCcwJaAjoCGGH2h0dHA6Ly9jcmwuZW50cnVzdC5uZXQvZzJjYS5jcmwwHQYDVR0O
# BBYEFIK61j2Xzp/PceiSN6/9s7VpNVfPMB8GA1UdIwQYMBaAFGpyJnrQHu995ztp
# UdRsjZ+QEmarMA0GCSqGSIb3DQEBCwUAA4IBAQAfXkEEtoNwJFMsVXMdZTrA7LR7
# BJheWTgTCaRZlEJeUL9PbG4lIJCTWEAN9Rm0Yu4kXsIBWBUCHRAJb6jU+5J+Nzg+
# LxR9jx1DNmSzZhNfFMylcfdbIUvGl77clfxwfREc0yHd0CQ5KcX+Chqlz3t57jpv
# 3ty/6RHdFoMI0yyNf02oFHkvBWFSOOtg8xRofcuyiq3AlFzkJg4sit1Gw87kVlHF
# VuOFuE2bRXKLB/GK+0m4X9HyloFdaVIk8Qgj0tYjD+uL136LwZNr+vFie1jpUJuX
# bheIDeHGQ5jXgWG2hZ1H7LGerj8gO0Od2KIc4NR8CMKvdgb4YmZ6tvf6yK81MIIG
# gzCCBGugAwIBAgIQNa+3e500H2r8j4RGqzE1KzANBgkqhkiG9w0BAQ0FADBpMQsw
# CQYDVQQGEwJVUzEWMBQGA1UECgwNRW50cnVzdCwgSW5jLjFCMEAGA1UEAww5RW50
# cnVzdCBDb2RlIFNpZ25pbmcgUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAt
# IENTQlIxMB4XDTIxMDUwNzE5MTk1MloXDTQwMTIyOTIzNTkwMFowYzELMAkGA1UE
# BhMCVVMxFjAUBgNVBAoTDUVudHJ1c3QsIEluYy4xPDA6BgNVBAMTM0VudHJ1c3Qg
# RXh0ZW5kZWQgVmFsaWRhdGlvbiBDb2RlIFNpZ25pbmcgQ0EgLSBFVkNTMjCCAiIw
# DQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAL69pznJpX3sXWXx9Cuph9DnrRrF
# GjsYzuGhUY1y+s5YH1y4JEIPRtUxl9BKTeObMMm6l6ic/kU2zyeA53u4bsEkt9+n
# dNyF8qMkWEXMlJQ7AuvEjXxG9VxmguOkwdMfrG4MUyMO1Dr62kLxg1RfNTJW8rV4
# m1cASB6pYWEnDnMDQ7bWcJL71IWaMMaz5ppeS+8dKthmqxZG/wvYD6aJSgJRV0E8
# QThOl8dRMm1njmahXk2fNSKv1Wq3f0BfaDXMafrxBfDqhabqMoXLwcHKg2lFSQbc
# CWy6SWUZjPm3NyeMZJ414+Xs5wegnahyvG+FOiymFk49nM8I5oL1RH0owL2JrWwv
# 3C94eRHXHHBL3Z0ITF4u+o29p91j9n/wUjGEbjrY2VyFRJ5jBmnQhlh4iZuHu1gc
# pChsxv5pCpwerBFgal7JaWUu7UMtafF4tzstNfKqT+If4wFvkEaq1agNBFegtKzj
# bb2dGyiAJ0bH2qpnlfHRh3vHyCXphAyPiTbSvjPhhcAz1aA8GYuvOPLlk4C/xsOr
# e5PEPZ257kV2wNRobzBePLQ2+ddFQuASBoDbpSH85wV6KI20jmB798i1SkesFGaX
# oFppcjFXa1OEzWG6cwcVcDt7AfynP4wtPYeM+wjX5S8Xg36Cq08J8inhflV3ZZQF
# HVnUCt2TfuMUXeK7AgMBAAGjggErMIIBJzASBgNVHRMBAf8ECDAGAQH/AgEAMB0G
# A1UdDgQWBBTOiU+CUaoVooRiyjEjYdJh+/j+eDAfBgNVHSMEGDAWgBSCutY9l86f
# z3Hokjev/bO1aTVXzzAzBggrBgEFBQcBAQQnMCUwIwYIKwYBBQUHMAGGF2h0dHA6
# Ly9vY3NwLmVudHJ1c3QubmV0MDEGA1UdHwQqMCgwJqAkoCKGIGh0dHA6Ly9jcmwu
# ZW50cnVzdC5uZXQvY3NicjEuY3JsMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAK
# BggrBgEFBQcDAzBEBgNVHSAEPTA7MDAGBFUdIAAwKDAmBggrBgEFBQcCARYaaHR0
# cDovL3d3dy5lbnRydXN0Lm5ldC9ycGEwBwYFZ4EMAQMwDQYJKoZIhvcNAQENBQAD
# ggIBAD4AVLgq849mr2EWxFiTZPRBi2RVjRs1M6GbkdirRsqrX7y+fnDk0tcHqJYH
# 14bRVwoI0NB4Tfgq37IE85rh13zwwQB6wUCh34qMt8u0HQFh8piapt24gwXKqSwW
# 3JwtDv6nl+RQqZeVwUsqjFHjxALga3w1TVO8S5QTi1MYFl6mCqe4NMFssess5DF9
# DCzGfOGkVugtdtWyE3XqgwCuAHfGb6k97mMUgVAW/FtPEhkOWw+N6kvOBkyJS64g
# zI5HpnXWZe4vMOhdNI8fgk1cQqbyFExQIJwJonQkXDnYiTKFPK+M5Wqe5gQ6pRP/
# qh3NR0suAgW0ao/rhU+B7wrbfZ8pj6XCP1I4UkGVO7w+W1QwQiMJY95QjYk1Rfqr
# uA+Poq17ehGT8Y8ohHtoeUdq6GQpTR/0HS9tHsiUhjzTWpl6a3yrNfcrOUtPuT8W
# ku8pjI2rrAEazHFEOctAPiASzghw40f+3IDXCADRC2rqIbV5ZhfpaqpW3c0VeLED
# wBStPkcYde0KU0syk83/gLGQ1hPl5EF4Iu1BguUO37DOlSFF5osB0xn39CtVrNlW
# c2MQ4LigbctUlpigmSFRBqqmDDorY8t52kO50hLM3o9VeukJ8+Ka0yXBezaS2uDl
# UmfN4+ZUCqWd1HOj0y9dBmSFA3d/YNjCvHTJlZFot7d+YRl1MIIGqDCCBJCgAwIB
# AgIQAe4UxLGsyd7P5PzHxoWYOTANBgkqhkiG9w0BAQsFADBjMQswCQYDVQQGEwJV
# UzEWMBQGA1UEChMNRW50cnVzdCwgSW5jLjE8MDoGA1UEAxMzRW50cnVzdCBFeHRl
# bmRlZCBWYWxpZGF0aW9uIENvZGUgU2lnbmluZyBDQSAtIEVWQ1MyMB4XDTIxMTEx
# ODIzMDczOVoXDTIyMTIxMjIzMDczOVowgdgxCzAJBgNVBAYTAlVTMQ4wDAYDVQQI
# EwVUZXhhczETMBEGA1UEBxMKUm91bmQgUm9jazETMBEGCysGAQQBgjc8AgEDEwJV
# UzEZMBcGCysGAQQBgjc8AgECEwhEZWxhd2FyZTERMA8GA1UEChMIRGVsbCBJbmMx
# HTAbBgNVBA8TFFByaXZhdGUgT3JnYW5pemF0aW9uMR0wGwYDVQQLExRDbGllbnQg
# UHJvZHVjdCBHcm91cDEQMA4GA1UEBRMHMjE0MTU0MTERMA8GA1UEAxMIRGVsbCBJ
# bmMwggGiMA0GCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQCcnoY5qeZB6eKg6TA0
# u4F4EOiljq6evB9RAQVNoxAiM/LCe2DdMC6NJZ65D+NvuoqdJOwFfFF4XsDZ1Ejt
# GIKSkFWi4UrgdG/VAh8QUru2zJc7Loun9WlgixCc3+umiC+BepYwkzRwCA6fnXDd
# pn7leFV6+hfTZxLZ+3FM+apPHrCA06ediV7TTqE2D+8OiO2ltOzTMGBSIFd+6QS3
# 9yqKiEFgU6Fj/XrZ/daJ7M3Y9E1HJGcmKB5I+7tO7WMcFXElJiCkXt8MJiKZWf9v
# sQUwz95YEwFHyQq28CIqSwhzTsu1RTr2ntYztWusyggBmeRMOZbpBCPwov/uH3Qg
# p3fss43WHpTOvrrOxy/aNi3l4wiAzE76I/Ormena6Q5KeDDRspg39LMopZqujyB3
# 0n1+MLt7AT+Rn/Wo8QEWmHWTPKxNgDLLGzmUdtwfNgkkBuh9d7QM4RQVm97Q/yCI
# OrVDpGpJic3WcgiWoeBNYGHjml0FQC0Y3wkmgOgUND7xL5ECAwEAAaOCAWAwggFc
# MAwGA1UdEwEB/wQCMAAwHQYDVR0OBBYEFLo0bmGFz/lpCSH/8Bb/n9HscUq3MB8G
# A1UdIwQYMBaAFM6JT4JRqhWihGLKMSNh0mH7+P54MGcGCCsGAQUFBwEBBFswWTAj
# BggrBgEFBQcwAYYXaHR0cDovL29jc3AuZW50cnVzdC5uZXQwMgYIKwYBBQUHMAKG
# Jmh0dHA6Ly9haWEuZW50cnVzdC5uZXQvZXZjczItY2hhaW4ucDdjMDEGA1UdHwQq
# MCgwJqAkoCKGIGh0dHA6Ly9jcmwuZW50cnVzdC5uZXQvZXZjczIuY3JsMA4GA1Ud
# DwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzBLBgNVHSAERDBCMDcGCmCG
# SAGG+mwKAQIwKTAnBggrBgEFBQcCARYbaHR0cHM6Ly93d3cuZW50cnVzdC5uZXQv
# cnBhMAcGBWeBDAEDMA0GCSqGSIb3DQEBCwUAA4ICAQCeCAC5jie90k3LIkOSD8lh
# F5ljcQDkp7HGkCvIVqNJ0hLHoLTubqURUWOBh0XVln6oGG80NVLVz/NqW4kGpLoC
# ntX/BGb68IbyyEh/uA2ODqRkFfnHhOqtoBlfn6A02/1GbW8Gjuc90MsK89ANVUyo
# g9l4DG+jjVjWpsRu21YypDNwnuHTzjbvl1E85zNDUJgq1P/9lxwvXr/DKQgwHsQs
# /7bflgYQsf2BS0aj1mDvnqUmFOVR6lEdbnxYo2cEmw3Uvx+Zd3oAkP+Cd8uxDn4b
# h+9DhnL+D7NNzbgAnDwB5RAiHp4yCIvHwHE+IZhUEGWLSqph81+oUUDwaeOohdMf
# NA3ZJYd8aSDgldapLuG3kfP91eMDu59AWtdFW1JZ0tGr8I24+LS4NeD6dsdb7RUj
# Z8VsK8S5VDKYyHzxQPYFI78w8wjIKZ9d1M7BrRiQMhg3U3gP9kj4GRVWIjJyxqPx
# JXahtIULNreCnfZzMi0w3QcLt1KwH4hYYQ9sO2EZYOUoZ4wWVodb5NQiM5Ksjmli
# 8262L7zhW5fb9LIzlvNf10z9Ab8nf+QN6dMWqydnHmB0kL6H1i515cE3cmBDo+b2
# QKQFbpI5d2AilrbsD3s9OD2siDrmTj+aFsZ3h/OZB2xiYkewm0QTpFDG5q715634
# kdBK9cjmdy5Y5OJ8+LSZkzGCEOEwghDdAgEBMHcwYzELMAkGA1UEBhMCVVMxFjAU
# BgNVBAoTDUVudHJ1c3QsIEluYy4xPDA6BgNVBAMTM0VudHJ1c3QgRXh0ZW5kZWQg
# VmFsaWRhdGlvbiBDb2RlIFNpZ25pbmcgQ0EgLSBFVkNTMgIQAe4UxLGsyd7P5PzH
# xoWYOTANBglghkgBZQMEAgEFAKB8MBAGCisGAQQBgjcCAQwxAjAAMBkGCSqGSIb3
# DQEJAzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEV
# MC8GCSqGSIb3DQEJBDEiBCAdajuVy0q09H2WmAAM4RnTNKkU4kBN2UKTd040VBXs
# KjANBgkqhkiG9w0BAQEFAASCAYCT6x2wmYjl5GzqNncd/EE13w5AxjxJSBPT3eRA
# lxfyaiEVnfDEBS/kJuLC2/geozCtwzCVmwHleBjNwaIsmFl2zv8+a+EtHGetHRog
# 9CVPPurk3t5+vR77Pztew+6Vt2C4tIemXO+jEiRbO5YETloH1txYfaz6yO5AlzOd
# +pry3gWYNhfLt/aFgudQlVKqgUy4pjAbtiTpUyk0IEkAvXaPJ+N1JDRgynM9l0Ro
# U+8ivwcpupsupDbfBbElktT3ljojLT5o2mJic6dsGuqEc6JVBZxe9MXRQAQqo8WB
# iJYuhBfthzf7kPWYbY4X/h6/G7uOeUZ9xsNvIgKH+xz8dFUqVk3kqbhOS8VXsjQK
# J8SZcjqLlrUGQ2w4wF3/4SiYPQFpywrYE9XUgStPcSCyjgbJ8a6BGG2y1g0d3hI1
# JLFbzC0xz7EUJVvJW/l9uRj1kFBZ9EaOmoxz0RYbACExUkUWq2wicqAmoJCzhR/G
# N50UEABxtmqIlzToI11y3rshwJ6hgg49MIIOOQYKKwYBBAGCNwMDATGCDikwgg4l
# BgkqhkiG9w0BBwKggg4WMIIOEgIBAzENMAsGCWCGSAFlAwQCATCCAQ8GCyqGSIb3
# DQEJEAEEoIH/BIH8MIH5AgEBBgtghkgBhvhFAQcXAzAxMA0GCWCGSAFlAwQCAQUA
# BCANH0eylzsBqY9AU/cNUKCgG+t3iH/f7NY2F17f8PCXsgIVAMWjAXvrMrJs3K/z
# w9BAY+0SYJfPGA8yMDIyMDkyOTEwNDE1M1owAwIBHqCBhqSBgzCBgDELMAkGA1UE
# BhMCVVMxHTAbBgNVBAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMR8wHQYDVQQLExZT
# eW1hbnRlYyBUcnVzdCBOZXR3b3JrMTEwLwYDVQQDEyhTeW1hbnRlYyBTSEEyNTYg
# VGltZVN0YW1waW5nIFNpZ25lciAtIEczoIIKizCCBTgwggQgoAMCAQICEHsFsdRJ
# aFFE98mJ0pwZnRIwDQYJKoZIhvcNAQELBQAwgb0xCzAJBgNVBAYTAlVTMRcwFQYD
# VQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0GA1UECxMWVmVyaVNpZ24gVHJ1c3QgTmV0
# d29yazE6MDgGA1UECxMxKGMpIDIwMDggVmVyaVNpZ24sIEluYy4gLSBGb3IgYXV0
# aG9yaXplZCB1c2Ugb25seTE4MDYGA1UEAxMvVmVyaVNpZ24gVW5pdmVyc2FsIFJv
# b3QgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTYwMTEyMDAwMDAwWhcNMzEw
# MTExMjM1OTU5WjB3MQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29y
# cG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxKDAmBgNV
# BAMTH1N5bWFudGVjIFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQC7WZ1ZVU+djHJdGoGi61XzsAGtPHGsMo8Fa4aa
# JwAyl2pNyWQUSym7wtkpuS7sY7Phzz8LVpD4Yht+66YH4t5/Xm1AONSRBudBfHkc
# y8utG7/YlZHz8O5s+K2WOS5/wSe4eDnFhKXt7a+Hjs6Nx23q0pi1Oh8eOZ3D9Jqo
# 9IThxNF8ccYGKbQ/5IMNJsN7CD5N+Qq3M0n/yjvU9bKbS+GImRr1wOkzFNbfx4Db
# ke7+vJJXcnf0zajM/gn1kze+lYhqxdz0sUvUzugJkV+1hHk1inisGTKPI8EyQRtZ
# Dqk+scz51ivvt9jk1R1tETqS9pPJnONI7rtTDtQ2l4Z4xaE3AgMBAAGjggF3MIIB
# czAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBADBmBgNVHSAEXzBd
# MFsGC2CGSAGG+EUBBxcDMEwwIwYIKwYBBQUHAgEWF2h0dHBzOi8vZC5zeW1jYi5j
# b20vY3BzMCUGCCsGAQUFBwICMBkaF2h0dHBzOi8vZC5zeW1jYi5jb20vcnBhMC4G
# CCsGAQUFBwEBBCIwIDAeBggrBgEFBQcwAYYSaHR0cDovL3Muc3ltY2QuY29tMDYG
# A1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9zLnN5bWNiLmNvbS91bml2ZXJzYWwtcm9v
# dC5jcmwwEwYDVR0lBAwwCgYIKwYBBQUHAwgwKAYDVR0RBCEwH6QdMBsxGTAXBgNV
# BAMTEFRpbWVTdGFtcC0yMDQ4LTMwHQYDVR0OBBYEFK9j1sqjToVy4Ke8QfMpojh/
# gHViMB8GA1UdIwQYMBaAFLZ3+mlIR59TEtXC6gcydgfRlwcZMA0GCSqGSIb3DQEB
# CwUAA4IBAQB16rAt1TQZXDJF/g7h1E+meMFv1+rd3E/zociBiPenjxXmQCmt5l30
# otlWZIRxMCrdHmEXZiBWBpgZjV1x8viXvAn9HJFHyeLojQP7zJAv1gpsTjPs1rST
# yEyQY0g5QCHE3dZuiZg8tZiX6KkGtwnJj1NXQZAv4R5NTtzKEHhsQm7wtsX4YVxS
# 9U72a433Snq+8839A9fZ9gOoD+NT9wp17MZ1LqpmhQSZt/gGV+HGDvbor9rsmxgf
# qrnjOgC/zoqUywHbnsc4uw9Sq9HjlANgCk2g/idtFDL8P5dA4b+ZidvkORS92uTT
# w+orWrOVWFUEfcea7CMDjYUq0v+uqWGBMIIFSzCCBDOgAwIBAgIQe9Tlr7rMBz+h
# ASMEIkFNEjANBgkqhkiG9w0BAQsFADB3MQswCQYDVQQGEwJVUzEdMBsGA1UEChMU
# U3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5l
# dHdvcmsxKDAmBgNVBAMTH1N5bWFudGVjIFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0Ew
# HhcNMTcxMjIzMDAwMDAwWhcNMjkwMzIyMjM1OTU5WjCBgDELMAkGA1UEBhMCVVMx
# HTAbBgNVBAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMR8wHQYDVQQLExZTeW1hbnRl
# YyBUcnVzdCBOZXR3b3JrMTEwLwYDVQQDEyhTeW1hbnRlYyBTSEEyNTYgVGltZVN0
# YW1waW5nIFNpZ25lciAtIEczMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
# AQEArw6Kqvjcv2l7VBdxRwm9jTyB+HQVd2eQnP3eTgKeS3b25TY+ZdUkIG0w+d0d
# g+k/J0ozTm0WiuSNQI0iqr6nCxvSB7Y8tRokKPgbclE9yAmIJgg6+fpDI3VHcAyz
# X1uPCB1ySFdlTa8CPED39N0yOJM/5Sym81kjy4DeE035EMmqChhsVWFX0fECLMS1
# q/JsI9KfDQ8ZbK2FYmn9ToXBilIxq1vYyXRS41dsIr9Vf2/KBqs/SrcidmXs7Dby
# lpWBJiz9u5iqATjTryVAmwlT8ClXhVhe6oVIQSGH5d600yaye0BTWHmOUjEGTZQD
# RcTOPAPstwDyOiLFtG/l77CKmwIDAQABo4IBxzCCAcMwDAYDVR0TAQH/BAIwADBm
# BgNVHSAEXzBdMFsGC2CGSAGG+EUBBxcDMEwwIwYIKwYBBQUHAgEWF2h0dHBzOi8v
# ZC5zeW1jYi5jb20vY3BzMCUGCCsGAQUFBwICMBkaF2h0dHBzOi8vZC5zeW1jYi5j
# b20vcnBhMEAGA1UdHwQ5MDcwNaAzoDGGL2h0dHA6Ly90cy1jcmwud3Muc3ltYW50
# ZWMuY29tL3NoYTI1Ni10c3MtY2EuY3JsMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMI
# MA4GA1UdDwEB/wQEAwIHgDB3BggrBgEFBQcBAQRrMGkwKgYIKwYBBQUHMAGGHmh0
# dHA6Ly90cy1vY3NwLndzLnN5bWFudGVjLmNvbTA7BggrBgEFBQcwAoYvaHR0cDov
# L3RzLWFpYS53cy5zeW1hbnRlYy5jb20vc2hhMjU2LXRzcy1jYS5jZXIwKAYDVR0R
# BCEwH6QdMBsxGTAXBgNVBAMTEFRpbWVTdGFtcC0yMDQ4LTYwHQYDVR0OBBYEFKUT
# AamfhcwbbhYeXzsxqnk2AHsdMB8GA1UdIwQYMBaAFK9j1sqjToVy4Ke8QfMpojh/
# gHViMA0GCSqGSIb3DQEBCwUAA4IBAQBGnq/wuKJfoplIz6gnSyHNsrmmcnBjL+NV
# KXs5Rk7nfmUGWIu8V4qSDQjYELo2JPoKe/s702K/SpQV5oLbilRt/yj+Z89xP+Yz
# CdmiWRD0Hkr+Zcze1GvjUil1AEorpczLm+ipTfe0F1mSQcO3P4bm9sB/RDxGXBda
# 46Q71Wkm1SF94YBnfmKst04uFZrlnCOvWxHqcalB+Q15OKmhDc+0sdo+mnrHIsV0
# zd9HCYbE/JElshuW6YUI6N3qdGBuYKVWeg3IRFjc5vlIFJ7lv94AvXexmBRyFCTf
# xxEsHwA/w0sUxmcczB4Go5BfXFSLPuMzW4IPxbeGAk5xn+lmRT92MYICWjCCAlYC
# AQEwgYswdzELMAkGA1UEBhMCVVMxHTAbBgNVBAoTFFN5bWFudGVjIENvcnBvcmF0
# aW9uMR8wHQYDVQQLExZTeW1hbnRlYyBUcnVzdCBOZXR3b3JrMSgwJgYDVQQDEx9T
# eW1hbnRlYyBTSEEyNTYgVGltZVN0YW1waW5nIENBAhB71OWvuswHP6EBIwQiQU0S
# MAsGCWCGSAFlAwQCAaCBpDAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQwHAYJ
# KoZIhvcNAQkFMQ8XDTIyMDkyOTEwNDE1M1owLwYJKoZIhvcNAQkEMSIEID8cHs1I
# RpmBf/MPSTJTFta8lAOoi2/TZiUWjUwg+wtsMDcGCyqGSIb3DQEJEAIvMSgwJjAk
# MCIEIMR0znYAfQI5Tg2l5N58FMaA+eKCATz+9lPvXbcf32H4MAsGCSqGSIb3DQEB
# AQSCAQBctg674goj7R5GLH7UEa0EndJmQ9vHmV6+jivdH8Ys3S07ghGK+NWYe1V9
# XGaG5X+wqt7zk7sg77nX8j/dkKFCE/MFPQAgQiRsWc1mvlNwFvmyj1dEZ8dlLlsq
# 6ctggjqiUyTPUnDNyL+NrMq+OZZqILvIMx1RQ/aQOsiPvPeu3CK/PLuDO/B1Ramc
# uwZ5y26HX5E0ajrPhWd8pORKOFtagSWOaS+wDIWJPpLTXSKs8/oKu4IlqyL2lwQV
# zma5nJ4OYTwja348TIQFnKakXduv7y5a3u4DX/nlUIBhIWDc0cZSKanz3m7Iy90t
# DXZReNkdxxF0jA0nsEXwdBEJRVn+
# SIG # End signature block
