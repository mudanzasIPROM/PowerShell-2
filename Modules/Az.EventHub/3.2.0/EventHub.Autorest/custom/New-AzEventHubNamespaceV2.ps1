# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Creates an EventHub Namespace
.Description
Creates an EventHub Namespace
#>

function New-AzEventHubNamespaceV2{
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IEhNamespace])]
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(

        [Parameter(Mandatory, HelpMessage = "The name of EventHub namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of EventHub namespace
        ${Name},

        [Parameter(Mandatory, HelpMessage = "The name of the resource group. The name is case insensitive.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},

        [Parameter(HelpMessage = "The ID of the target subscription.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},

        [Parameter(HelpMessage = "Alternate name specified when alias and namespace names are same")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.String]
        ${AlternateName},

        [Parameter(HelpMessage = "Cluster ARM ID of the Namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.String]
        ${ClusterArmId},

        [Parameter(HelpMessage = "This property disables SAS authentication for the Event Hubs namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${DisableLocalAuth},

        [Parameter(HelpMessage = "Enable Infrastructure Encryption (Double Encryption)")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${RequireInfrastructureEncryption},

        [Parameter(Mandatory, HelpMessage = "Cluster ARM ID of the Namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.String]
        ${Location},

        [Parameter(HelpMessage = "Enabling this property creates a Standard Event Hubs Namespace in regions supported availability zones.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${ZoneRedundant},

        [Parameter(HelpMessage = "Properties to configure Encryption")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IKeyVaultProperties[]]
        ${KeyVaultProperty},

        [Parameter(HelpMessage = "Type of managed service identity.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Support.ManagedServiceIdentityType]
        ${IdentityType},

        [Parameter(HelpMessage = "Properties for User Assigned Identities")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.String[]]
        # IdentityId
        ${UserAssignedIdentityId},

        [Parameter(HelpMessage = "Value that indicates whether AutoInflate is enabled for eventhub namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        ${EnableAutoInflate},

        [Parameter(HelpMessage = "Upper limit of throughput units when AutoInflate is enabled, value should be within 0 to 20 throughput units. ( '0' if AutoInflateEnabled = true)")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Int64]
        ${MaximumThroughputUnit},

        [Parameter(HelpMessage = "The minimum TLS version for the cluster to support, e.g. '1.2'")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.String]
        ${MinimumTlsVersion},

        [Parameter(HelpMessage = "The minimum TLS version for the cluster to support, e.g. '1.2'")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Support.SkuName]
        ${SkuName},

        [Parameter(HelpMessage = "This determines if traffic is allowed over public network. By default it is enabled.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Support.PublicNetworkAccess]
        ${PublicNetworkAccess},

        [Parameter(HelpMessage = "The Event Hubs throughput units for Basic or Standard tiers, where value should be 0 to 20 throughput units. The Event Hubs premium units for Premium tier, where value should be 0 to 10 premium units.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Int64]
        ${SkuCapacity},

        [Parameter(HelpMessage = "Tag of EventHub Namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [System.Collections.Hashtable]
        ${Tag},

        [Parameter(HelpMessage = "The credentials, account, tenant, and subscription used for communication with Azure.")]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Azure')]
        [System.Management.Automation.PSObject]
        ${DefaultProfile},

        [Parameter(HelpMessage = "Run the command as a job")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
    process{
        try{
       	    $null = $PSBoundParameters.Remove('WhatIf')
            $null = $PSBoundParameters.Remove('Confirm')
            if($PSBoundParameters.ContainsKey('SkuName')){
                $PSBoundParameters.Add('SkuTier', $SkuName)
            }

            if($PSBoundParameters.ContainsKey('KeyVaultProperty')){
                $PSBoundParameters.Add('KeySource', 'Microsoft.KeyVault')
            }
            
            if($PSBoundParameters.ContainsKey('UserAssignedIdentityId')){
                $identityHashTable = @{}

                foreach ($resourceID in $UserAssignedIdentityId){
                    $identityHashTable.Add($resourceID, [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.UserAssignedIdentity]::new())
                }

                $PSBoundParameters.Add("UserAssignedIdentity", $identityHashTable)
                $null = $PSBoundParameters.Remove("UserAssignedIdentityId")
            }
            if ($PSCmdlet.ShouldProcess("EventHub Namespace $($Name)", "Create or update")) {
                Az.EventHub.private\New-AzEventHubNamespaceV2_CreateExpanded @PSBoundParameters
            }
	}
	catch{
	    throw
	}
    }
}

# SIG # Begin signature block
# MIInngYJKoZIhvcNAQcCoIInjzCCJ4sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCbKBTB8Sy/LUbD
# cEz7C/J+emZ8pwFhmtLBoVk8cdwl86CCDYEwggX/MIID56ADAgECAhMzAAACzI61
# lqa90clOAAAAAALMMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAxWhcNMjMwNTExMjA0NjAxWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQCiTbHs68bADvNud97NzcdP0zh0mRr4VpDv68KobjQFybVAuVgiINf9aG2zQtWK
# No6+2X2Ix65KGcBXuZyEi0oBUAAGnIe5O5q/Y0Ij0WwDyMWaVad2Te4r1Eic3HWH
# UfiiNjF0ETHKg3qa7DCyUqwsR9q5SaXuHlYCwM+m59Nl3jKnYnKLLfzhl13wImV9
# DF8N76ANkRyK6BYoc9I6hHF2MCTQYWbQ4fXgzKhgzj4zeabWgfu+ZJCiFLkogvc0
# RVb0x3DtyxMbl/3e45Eu+sn/x6EVwbJZVvtQYcmdGF1yAYht+JnNmWwAxL8MgHMz
# xEcoY1Q1JtstiY3+u3ulGMvhAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUiLhHjTKWzIqVIp+sM2rOHH11rfQw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDcwNTI5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAeA8D
# sOAHS53MTIHYu8bbXrO6yQtRD6JfyMWeXaLu3Nc8PDnFc1efYq/F3MGx/aiwNbcs
# J2MU7BKNWTP5JQVBA2GNIeR3mScXqnOsv1XqXPvZeISDVWLaBQzceItdIwgo6B13
# vxlkkSYMvB0Dr3Yw7/W9U4Wk5K/RDOnIGvmKqKi3AwyxlV1mpefy729FKaWT7edB
# d3I4+hldMY8sdfDPjWRtJzjMjXZs41OUOwtHccPazjjC7KndzvZHx/0VWL8n0NT/
# 404vftnXKifMZkS4p2sB3oK+6kCcsyWsgS/3eYGw1Fe4MOnin1RhgrW1rHPODJTG
# AUOmW4wc3Q6KKr2zve7sMDZe9tfylonPwhk971rX8qGw6LkrGFv31IJeJSe/aUbG
# dUDPkbrABbVvPElgoj5eP3REqx5jdfkQw7tOdWkhn0jDUh2uQen9Atj3RkJyHuR0
# GUsJVMWFJdkIO/gFwzoOGlHNsmxvpANV86/1qgb1oZXdrURpzJp53MsDaBY/pxOc
# J0Cvg6uWs3kQWgKk5aBzvsX95BzdItHTpVMtVPW4q41XEvbFmUP1n6oL5rdNdrTM
# j/HXMRk1KCksax1Vxo3qv+13cCsZAaQNaIAvt5LvkshZkDZIP//0Hnq7NnWeYR3z
# 4oFiw9N2n3bb9baQWuWPswG0Dq9YT9kb+Cs4qIIwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZczCCGW8CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgl0gXM2I8
# nc0KYBBxq1HpODjUrRUDlIcSvygHHQdN0L8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBg377Q08P1JCHTuPcgFMIsagWiHSFFGSm95Hnytb5M
# Am8oXBGVwu0h+AKqBSlNcKoXNZp3sTak1a+vM4pSom804CWDWE7q0X/BddhpvYot
# JRiWzRqMTXxxqiL3AOjn85jtNzykFlKCAij73g7UKhrPcbHiIRG09A3+8aCNekp9
# XJeJA6pPYbn1NIHNeW7cSI4F4FxL0GAv8KSTwjAfyX/lR9Lm0BooepLNYMs8dGHd
# JvGiBP97PBz27OIuwQ5/9ZVtodIPutv67Qf2gM/1Y/rMgUkuX9QaLwL84JhR0Et7
# ezyWOyLgdwmzEaDaKYQBqwZKFZUGukoB1gFI8l4EuCZloYIW/TCCFvkGCisGAQQB
# gjcDAwExghbpMIIW5QYJKoZIhvcNAQcCoIIW1jCCFtICAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIIueVpiaUzkXARpm4XkTW7MZqs+fRbIKYeMe1gos
# rQo1AgZjbVaFc70YEzIwMjIxMjAxMTAxNTA3LjcwNFowBIACAfSggdCkgc0wgcox
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1p
# Y3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOkVBQ0UtRTMxNi1DOTFEMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNloIIRVDCCBwwwggT0oAMCAQICEzMAAAHDi2/TSL8OkV0AAQAAAcMw
# DQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcN
# MjIxMTA0MTkwMTI5WhcNMjQwMjAyMTkwMTI5WjCByjELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2Eg
# T3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046RUFDRS1FMzE2LUM5
# MUQxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0G
# CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC767zqzdH+r6KSizzRoPjZibbU0M5m
# 2V01HEwVTGbij2RVaRKHZzyM4LElfBXYoWh0JPGkZCz2PLmdQj4ur9u3Qda1Jg8w
# 8+163jbSDPAzUSxHbqRunCUEfEVjiGTfLcAf7Vgp/1uG8+zuQ9tdsfuB1pyK14H4
# XsWg5G317QP92wF4bzQZkAXbLotYCPoLaYyqVp9eTBt9PJBqe5frli77EynInV8B
# ESm5Hvrqt4+uqUTQppp4PSeo6AatORJl4IwM8fo60nTSNczBsgPIfuXh9hF4ixN/
# M3kZ/dRqKuyN5r4oXLbaVTx6WcheOh7LHelx6wf6rlqtjVzoc995KeR4yiT+DGcH
# s/UyO3sj0Qj22FC0y/L/VJSYsbXasFH8N+F4T9Umlyb9Nh6hXXU19BCeX+MFs9tJ
# EGnQcapMhxYOljoyBJ0GhARPUO+kTg9fiyd00ZzXAbKDjmkfrZkx9QX8LMZnuJXr
# ftG2dAVcPNPGhIQSR1cx1YMkb6OPGgLXqVGTXEWd+QDi6iZriYqyjuq8Tp3bv4rr
# LMhJZDtOO61gsomdLM29+I2K7K//THEIBJIBG85De/1x6C8z+me5T1zqz7iCYrf7
# mOFy+dYZCokTS2lgeaTduaYEvWAeb1OMEnPmb/yu8czdHDc5SFXj/CYAvfYqY9Hl
# RtvjDDkc0aK5jQIDAQABo4IBNjCCATIwHQYDVR0OBBYEFBwYvs3Y128BorxNwuvE
# xOxrxoHWMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRY
# MFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01p
# Y3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEF
# BQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAo
# MSkuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZI
# hvcNAQELBQADggIBAN3yplscGp0EVEPEYbAOiWWdHJ3RaZSeOqg/7lAIfi8w8G3i
# 6YdWEm7J5GQMQuRNZm5aordTXPYecZq1ucRNwdSXLCUf7cjtHt9TTMpjDY8sD5Vr
# AJyuewgKATfbjYSwQL9nRhTvjQ0n/Fu7Osa1MS1QiJC+vYAI8nKGw+i17wi1N/i4
# 1bgxujVA/S2NwEoKAR7MgLgNhQzQFgJYKZ5mY3ACXF+lOWI4UQoH1RpKodKznVwf
# wljSCovcvAj0th+MQ7vv74dj+cypcIyL2KFQqginZN+N/N2bk2DlX7LDz7BeXb1F
# xbhDgK8ee018rFP2hDcntgFBAQdYk+DxM1H3DgHzYXOasN3ywvoRO8a7HmEVzCYX
# 5DatPkxrx1hRJ0JKD+KGgRhQYlmdkv2fIOnWyd+VJVfsWkvIAvMMOUcFbUImFhV9
# 8lGirPUPiRGiipEE1FowUw+KeDLDBsSCEyF4ko2h1rsAaCr7UcfVp9GUT72phb0U
# ox7PF5CZ/yBy4C6Gv0gBfJoX0MXQ8nl/i6HM5K8gLUGQm3MXqinjlRhojtX71fx1
# zBdtkmcggAfVyNU7woQKHEoiSmThCDLQ+hyBTBoZaqYtZG7WFDVYladBe+8Fh5gM
# ZZuP8+1KXLC/qbya6Mt6l8y8lxTbkpaSVI/YW43Hpo5V96N76mBvAhAhVDWdMIIH
# cTCCBVmgAwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCB
# iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMp
# TWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEw
# OTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIh
# C3miy9ckeb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNx
# WuJ+Slr+uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFc
# UTE3oAo4bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAc
# nVL+tuhiJdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUo
# veO0hyTD4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyzi
# YrLNueKNiOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9
# fvzZnkXftnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdH
# GO2n6Jl8P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7X
# KHYC4jMYctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiE
# R9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/
# eKtFtvUeh17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3
# FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAd
# BgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEE
# AYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMB
# Af8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1Ud
# HwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3By
# b2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQRO
# MEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2Vy
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4IC
# AQCdVX38Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pk
# bHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gng
# ugnue99qb74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3
# lbYoVSfQJL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHC
# gRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6
# MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEU
# BHG/ZPkkvnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvsh
# VGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+
# fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrp
# NPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHI
# qzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAsswggI0AgEBMIH4
# oYHQpIHNMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjpFQUNFLUUzMTYtQzkxRDElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA8R0v4+z6HTd75Itd
# 0bO5ju0u7s6ggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOcy20kwIhgPMjAyMjEyMDExNTUwMzNaGA8yMDIyMTIw
# MjE1NTAzM1owdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA5zLbSQIBADAHAgEAAgIN
# RTAHAgEAAgIRwTAKAgUA5zQsyQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# ADJkPyTEq91asyguQ3SrIOcqb1RVnZzBZZmDt3XLNdsOzSOqSedpQJohhpYXndyI
# rgcG/JKRxGKq/CmplVvRNrCqx6tjE0t89RqdqWyMkHoeW0GijI4An+vmlAgTdSHv
# o8OCu1TTjkKiR6zSdsioscPtRaHyCJ91hxbuf2mYUiu+MYIEDTCCBAkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAHDi2/TSL8OkV0AAQAA
# AcMwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQgpQ7KhNOUipupVzkrosm2zKhcZf0GMN+iAkOaWha7
# 1m0wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCDS+1Obb5JJ6uHUqICTCslM
# AvFN8mi2U9wNnZlKfvwqSTCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABw4tv00i/DpFdAAEAAAHDMCIEIIC+dpFV7MjR83V63K2JFxF6
# pJmFfEWEWy8DQDdRpuRZMA0GCSqGSIb3DQEBCwUABIICAHIXdvcIHmq9BdPG7nVp
# DzQNxq3SxEPt/SrjrZ6JVrcDhDMZBlXtui9zBKy443WyU83FUt77nOiC9V/kDCe5
# 6iq7hdKiUsW0fkgx9NA/34Dkznh7II5TaWy5pln6dWvrktHN9q1VRT9J/8xEIraM
# mQYETcCWLozVqMR/h5URrrFb66uNNDTNHF2CAdLYOvjKPWMYAc27CpQD38Vz/4Ad
# 4bVkLGV8VOynp8fuOsL/GyUKXrWLpwj5FbAUPOmpmJXA9/DceQ8HJK57elXUAsPz
# CPtpQwQ4YF4DBCl1vzbO1bVr6GI74p3uzblAOepPMoV1jK4263bGKZherW0J+pD7
# HEayeHNvLFXmR+8AhuyOXVxq/eUwd60TxHTGiYQ2rQH4gTmK38cUQbMsZyIJiLoG
# aEaFEGV+/eSpKBshcODd/qr2Au0vFe1FcJTOBBOAVxurumfB4oRVczZEECOchAc2
# wH6m9PBHQMrx7wbGcuQfp4ZkNYTilzQji6sgCa9lpbTE4TM+FAQy968UoM4rmMfO
# 9TlcB1V4nkdjvMu6ntDFokYt+Ktk5/E9IMW8K+oaRd0guO9DicIxR2GhpLvHz75N
# A3XH7vy08npWxR3FbyGmTyDIKc24wcSEozW0adpdwFjqMkF5NwpPXmEYtbxpzUpR
# BIicyk2L7y3eGnBxA/HwYI09
# SIG # End signature block
