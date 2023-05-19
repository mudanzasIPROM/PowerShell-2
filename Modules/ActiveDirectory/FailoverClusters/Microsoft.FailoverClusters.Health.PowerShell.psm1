#public enum MetricUnitEnum
#{
#    0 // No Units
#    1 // PerSecond
#    2 // bytes PerSecond
#    3 // seconds
#    4 // bytes
#    5 // percent
#    6 // plain Seconds
#    7 // bits PerSecond
#}
function Get-ClusterPerformanceHistory
{
    [CmdletBinding(DefaultParameterSetName="ByCluster", SupportsShouldProcess, ConfirmImpact="medium")]
    Param
    (
        [parameter(Mandatory=$true, ParameterSetName="Api")]
        [ValidateNotNullOrEmpty()]
        [string]$SeriesKeyName,

        [parameter(Mandatory=$true, ParameterSetName="Api")]
        [ValidateNotNullOrEmpty()]
        [string]$Stream,

        [string[]]
        [ValidateSet(
            "Volume.IOPS.Read",
            "Volume.IOPS.Write",
            "Volume.IOPS.Total",
            "Volume.Throughput.Read",
            "Volume.Throughput.Write",
            "Volume.Throughput.Total",
            "Volume.Latency.Read",
            "Volume.Latency.Write",
            "Volume.Latency.Average",
            "ClusterNode.Cpu.Usage",
            "ClusterNode.Cpu.Usage.Guest",
            "ClusterNode.Memory.Usage.Guest",
            "VM.Memory.Maximum",
            "ClusterNode.Memory.Available",
            "ClusterNode.Memory.Total",
            "ClusterNode.Memory.Usage.Host",
            "ClusterNode.Memory.Usage",
            "ClusterNode.Cpu.Usage.Host", 
            "Volume.Size.Available",
            "Volume.Size.Total",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty",
			"ClusterNode.CsvCache.Iops.Read.Hit",
			"ClusterNode.CsvCache.Iops.Read.Miss",
			"ClusterNode.CsvCache.Iops.Read.HitRate",
			"ClusterNode.SblCache.Iops.Read.Hit",
			"ClusterNode.SblCache.Iops.Read.Miss",
			"ClusterNode.SblCache.Iops.Read.HitRate"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByCluster")]
        $ClusterSeriesName=@(
            "Volume.IOPS.Read",
            "Volume.IOPS.Write",
            "Volume.IOPS.Total",
            "Volume.Throughput.Read",
            "Volume.Throughput.Write",
            "Volume.Throughput.Total",
            "Volume.Latency.Read",
            "Volume.Latency.Write",
            "Volume.Latency.Average",
            "ClusterNode.Cpu.Usage",
            "ClusterNode.Cpu.Usage.Guest",
            "ClusterNode.Memory.Usage.Guest",
            "VM.Memory.Maximum",
            "ClusterNode.Memory.Available",
            "ClusterNode.Memory.Total",
            "ClusterNode.Memory.Usage.Host",
            "ClusterNode.Memory.Usage",
            "ClusterNode.Cpu.Usage.Host", 
            "Volume.Size.Available",
            "Volume.Size.Total",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty",
			"ClusterNode.CsvCache.Iops.Read.Hit",
			"ClusterNode.CsvCache.Iops.Read.Miss",
			"ClusterNode.CsvCache.Iops.Read.HitRate",
			"ClusterNode.SblCache.Iops.Read.Hit",
			"ClusterNode.SblCache.Iops.Read.Miss",
			"ClusterNode.SblCache.Iops.Read.HitRate"
        ),

        [string[]]
        [ValidateSet(
            "ClusterNode.Cpu.Usage",
            "ClusterNode.Cpu.Usage.Guest",
            "ClusterNode.Memory.Usage.Guest",
            "VM.Memory.Maximum",
            "ClusterNode.Memory.Usage.Host",
            "ClusterNode.Cpu.Usage.Host", 
            "ClusterNode.Memory.Total",
            "ClusterNode.Memory.Available",
            "ClusterNode.Memory.Usage",
            "NetAdapter.Bandwidth.Inbound",
            "NetAdapter.Bandwidth.Outbound",
            "NetAdapter.Bandwidth.Total",
            "NetAdapter.Bandwidth.RDMA.Inbound",
            "NetAdapter.Bandwidth.RDMA.Outbound",
            "NetAdapter.Bandwidth.RDMA.Total",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty",
			"ClusterNode.CsvCache.Iops.Read.Hit",
			"ClusterNode.CsvCache.Iops.Read.Miss",
			"ClusterNode.CsvCache.Iops.Read.HitRate",
			"ClusterNode.SblCache.Iops.Read.Hit",
			"ClusterNode.SblCache.Iops.Read.Miss",
			"ClusterNode.SblCache.Iops.Read.HitRate",
            "ClusterNode.Storage.Degraded"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByClusterNode")]
        $ClusterNodeSeriesName=@(
            "ClusterNode.Cpu.Usage",
            "ClusterNode.Cpu.Usage.Guest",
            "ClusterNode.Memory.Usage.Guest",
            "VM.Memory.Maximum",
            "ClusterNode.Memory.Usage.Host",
            "ClusterNode.Cpu.Usage.Host", 
            "ClusterNode.Memory.Total",
            "ClusterNode.Memory.Available",
            "ClusterNode.Memory.Usage",
            "NetAdapter.Bandwidth.Inbound",
            "NetAdapter.Bandwidth.Outbound",
            "NetAdapter.Bandwidth.Total",
            "NetAdapter.Bandwidth.RDMA.Inbound",
            "NetAdapter.Bandwidth.RDMA.Outbound",
            "NetAdapter.Bandwidth.RDMA.Total",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty",
			"ClusterNode.CsvCache.Iops.Read.Hit",
			"ClusterNode.CsvCache.Iops.Read.Miss",
			"ClusterNode.CsvCache.Iops.Read.HitRate",
			"ClusterNode.SblCache.Iops.Read.Hit",
			"ClusterNode.SblCache.Iops.Read.Miss",
			"ClusterNode.SblCache.Iops.Read.HitRate",
            "ClusterNode.Storage.Degraded"
        ),

        [string[]]
        [Validateset(
            "VM.Cpu.Usage",
            "VM.Memory.Total",
            "VM.Memory.Available",
            "VM.Memory.Pressure",
            "VM.Memory.Assigned",
            "VM.Memory.Minimum",
            "VM.Memory.Maximum",
            "VM.Memory.Startup",
            "VHD.Latency.Average",
            "VHD.Throughput.Read",
            "VHD.Throughput.Write",
            "VHD.Throughput.Total",
            "VHD.IOPS.Read",
            "VHD.IOPS.Write",
            "VHD.IOPS.Total",
            "VMNetworkAdapter.Bandwidth.Inbound",
            "VMNetworkAdapter.Bandwidth.Outbound",
            "VMNetworkAdapter.Bandwidth.Total"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByVM")]
        $VMSeriesName=@(
            "VM.Cpu.Usage",
            "VM.Memory.Total",
            "VM.Memory.Available",
            "VM.Memory.Pressure",
            "VM.Memory.Assigned",
            "VM.Memory.Minimum",
            "VM.Memory.Maximum",
            "VM.Memory.Startup",
            "VHD.Latency.Average",
            "VHD.Throughput.Read",
            "VHD.Throughput.Write",
            "VHD.Throughput.Total",
            "VHD.IOPS.Read",
            "VHD.IOPS.Write",
            "VHD.IOPS.Total",
            "VMNetworkAdapter.Bandwidth.Inbound",
            "VMNetworkAdapter.Bandwidth.Outbound",
            "VMNetworkAdapter.Bandwidth.Total"
        ),

        [string[]]
        [ValidateSet(
            "VHD.Latency.Average",
            "VHD.Throughput.Read",
            "VHD.Throughput.Write",
            "VHD.Throughput.Total",
            "VHD.IOPS.Read",
            "VHD.IOPS.Write",
            "VHD.IOPS.Total",
            "VHD.Size.Current",
            "VHD.Size.Maximum"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByVHD")]
        $VHDSeriesName=@(
            "VHD.Latency.Average",
            "VHD.Throughput.Read",
            "VHD.Throughput.Write",
            "VHD.Throughput.Total",
            "VHD.IOPS.Read",
            "VHD.IOPS.Write",
            "VHD.IOPS.Total",
            "VHD.Size.Current",
            "VHD.Size.Maximum"
        ),

        [string[]]
        [Validateset(
            "PhysicalDisk.IOPS.Read",
            "PhysicalDisk.IOPS.Write",
            "PhysicalDisk.IOPS.Total",
            "PhysicalDisk.Throughput.Read",
            "PhysicalDisk.Throughput.Write",
            "PhysicalDisk.Throughput.Total",
            "PhysicalDisk.Latency.Read",
            "PhysicalDisk.Latency.Write",
            "PhysicalDisk.Latency.Average",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByPhysicalDisk")]
        $PhysicalDiskSeriesName =@(
            "PhysicalDisk.IOPS.Read",
            "PhysicalDisk.IOPS.Write",
            "PhysicalDisk.IOPS.Total",
            "PhysicalDisk.Throughput.Read",
            "PhysicalDisk.Throughput.Write",
            "PhysicalDisk.Throughput.Total",
            "PhysicalDisk.Latency.Read",
            "PhysicalDisk.Latency.Write",
            "PhysicalDisk.Latency.Average",
            "PhysicalDisk.Capacity.Size.Used",
            "PhysicalDisk.Capacity.Size.Total",
            "PhysicalDisk.Cache.Size.Total",
            "PhysicalDisk.Cache.Size.Dirty"
        ),

        [string[]]
        [ValidateSet(
            "Volume.IOPS.Read",
            "Volume.IOPS.Write",
            "Volume.IOPS.Total",
            "Volume.Throughput.Read",
            "Volume.Throughput.Write",
            "Volume.Throughput.Total",
            "Volume.Latency.Read",
            "Volume.Latency.Write",
            "Volume.Latency.Average",
            "Volume.Size.Available",
            "Volume.Size.Total"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByVolume")]
        $VolumeSeriesName =@(
            "Volume.IOPS.Read",
            "Volume.IOPS.Write",
            "Volume.IOPS.Total",
            "Volume.Throughput.Read",
            "Volume.Throughput.Write",
            "Volume.Throughput.Total",
            "Volume.Latency.Read",
            "Volume.Latency.Write",
            "Volume.Latency.Average",
            "Volume.Size.Available",
            "Volume.Size.Total"
        ),

        [string[]]
        [ValidateSet(
            "NetAdapter.Bandwidth.Inbound",
            "NetAdapter.Bandwidth.Outbound",
            "NetAdapter.Bandwidth.Total",
            "NetAdapter.Bandwidth.RDMA.Inbound",
            "NetAdapter.Bandwidth.RDMA.Outbound",
            "NetAdapter.Bandwidth.RDMA.Total"
        )]
        [parameter(Position=0, Mandatory=$false, ParameterSetName="ByNetAdapter")]
        $NetAdapterSeriesName=@(
            "NetAdapter.Bandwidth.Inbound",
            "NetAdapter.Bandwidth.Outbound",
            "NetAdapter.Bandwidth.Total",
            "NetAdapter.Bandwidth.RDMA.Inbound",
            "NetAdapter.Bandwidth.RDMA.Outbound",
            "NetAdapter.Bandwidth.RDMA.Total"
        ),

        [string]
        [ValidateSet("MostRecent","LastHour","LastDay","LastWeek","LastMonth","LastYear")]
        [ValidateNotNullOrEmpty()]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByCluster")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByClusterNode")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByVM")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByVHD")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByPhysicalDisk")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByVolume")]
        [parameter(Position=1, Mandatory=$false, ParameterSetName="ByNetAdapter")]
        $TimeFrame="MostRecent",

        [Microsoft.FailoverClusters.PowerShell.Cluster]
        [parameter(
            Position=2,
            Mandatory=$false,
            ParameterSetName="ByCluster",
            ValueFromPipeline= $true
        )]
        $Cluster,

        [Microsoft.FailoverClusters.PowerShell.ClusterNode[]]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByClusterNode",
            ValueFromPipeline= $true
        )]
        $ClusterNode,

        [PSObject[]]
        [PSTypeName("Microsoft.HyperV.PowerShell.VirtualMachine")]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByVM",
            ValueFromPipeline=$true
        )]
        $VM,

        [PSObject[]]
        [PSTypeName("Microsoft.Vhd.PowerShell.VirtualHardDisk")]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByVHD",
            ValueFromPipeline=$true
        )]
        $VHD,

        [Microsoft.Management.Infrastructure.CimInstance[]]
        [PSTypeName("Microsoft.Management.Infrastructure.CimInstance#root/microsoft/windows/storage/MSFT_PhysicalDisk")]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByPhysicalDisk",
            ValueFromPipeline=$true
        )]
        $PhysicalDisk,

        [Microsoft.Management.Infrastructure.CimInstance[]]
        [PSTypeName("Microsoft.Management.Infrastructure.CimInstance#root/microsoft/windows/storage/MSFT_Volume")]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByVolume",
            ValueFromPipeline=$true
        )]
        $Volume,

        [Microsoft.Management.Infrastructure.CimInstance[]]
        [PSTypeName("Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetAdapter")]
        [parameter(
            Position=2,
            Mandatory=$true,
            ParameterSetName="ByNetAdapter",
            ValueFromPipeline=$true
        )]
        $NetworkAdapter,

        [Microsoft.Management.Infrastructure.CimSession]
        $CimSession
    )

    Begin
    {   
        $noSessionPassed = $false     
    	if (-not $CimSession)
        {
            $noSessionPassed = $true
            $CimSession = New-CimSession -Verbose:$false
        }

        $script:results=@()
        try
        {
        	if((Get-CimInstance -namespace "root\mscluster" -ClassName "MSCluster_Cluster" -CimSession $CimSession -ErrorAction Stop).S2DEnabled -eq 0)
            {
               throw "Get-ClusterPerformanceHistory is only available for Storage Spaces Direct. Run 'Enable-ClusterS2D' and try again." 
            }

            $healthResource = Get-CimInstance -namespace "root\mscluster" -Query "Select * from MSCluster_Resource Where Type like 'health service'" -CimSession $CimSession -ErrorAction Stop
            if($healthResource)
            {
                if($healthResource.State -ne 2)
                {
                    throw "The Health cluster resource is not online. Start it and try again."
                }

                $StorageSubSystem = Get-StorageSubSystem Cluster* -CimSession $CimSession -ErrorAction Stop
                If ( !( ($StorageSubSystem | Get-StorageHealthSetting -Name "System.PerformanceHistory.Path" -CimSession $CimSession -ErrorAction Stop).Value) ) 
                {
                    throw "Cluster performance history is not running. Run 'Start-ClusterPerformanceHistory' and try again."
                }
            }
            else
            {
                throw "The Health cluster resource was not found. Add it and try again." 
            }
        }
        catch
        {
            if($noSessionPassed)
            {
   	            Write-Warning "To run this command from outside the cluster, use the -CimSession parameter."
            }
			throw
        }
    }

    Process
    {
        $SeriesNames=@{}
        Write-Progress -Activity "Get-ClusterPerformanceHistory" -PercentComplete 0 -CurrentOperation "Gathering objects..." -Status "0/3"


        $flags=0

        function Initalize-SeriesData
        {
            param
            (
                [string]$TagetId_,
                [string]$ObjectTypeName_,
                [string]$ObjectDescription_,
                [string[]]$SourceSeriesName_
            )
            process
            {
                $SD=@{}
                foreach ($SeriesName_ in $SourceSeriesName_)
                {
                    $SeriesName = "$($SeriesName_),$($ObjectTypeName_)=$($TagetId_)"
                    $SD.Add($SeriesName, $ObjectDescription_)
                }

                return $SD
            }
        }

        function GetClusterUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "Volume.IOPS.Read,*"                        { return 1 }
                    "Volume.IOPS.Write,*"                       { return 1 }
                    "Volume.IOPS.Total,*"                       { return 1 }
                    "Volume.Throughput.Read,*"                  { return 2 }
                    "Volume.Throughput.Write,*"                 { return 2 }
                    "Volume.Throughput.Total,*"                 { return 2 }
                    "Volume.Latency.Read,*"                     { return 3 }
                    "Volume.Latency.Write,*"                    { return 3 }
                    "Volume.Latency.Average,*"                  { return 3 }
                    "ClusterNode.Cpu.Usage,*"                   { return 5 }
                    "ClusterNode.Cpu.Usage.Guest,*"             { return 5 }
                    "ClusterNode.Memory.Usage.Guest,*"          { return 4 }
                    "VM.Memory.Maximum,*"                       { return 4 }
                    "ClusterNode.Memory.Available,*"            { return 4 }
                    "ClusterNode.Memory.Total,*"                { return 4 }
                    "ClusterNode.Memory.Usage.Host,*"           { return 4 }
                    "ClusterNode.Memory.Usage,*"                { return 4 }
                    "ClusterNode.Cpu.Usage.Host,*"              { return 5 } 
                    "Volume.Size.Available,*"                   { return 4 }
                    "Volume.Size.Total,*"                       { return 4 }
                    "PhysicalDisk.Capacity.Size.Used,*"         { return 4 }
                    "PhysicalDisk.Capacity.Size.Total,*"        { return 4 }
                    "PhysicalDisk.Cache.Size.Total,*"           { return 4 }
                    "PhysicalDisk.Cache.Size.Dirty,*"           { return 4 }
					"ClusterNode.CsvCache.Iops.Read.Hit,*"      { return 1 }
					"ClusterNode.CsvCache.Iops.Read.Miss,*"     { return 1 }
					"ClusterNode.CsvCache.Iops.Read.HitRate,*"  { return 5 }
					"ClusterNode.SblCache.Iops.Read.Hit,*"      { return 1 }
					"ClusterNode.SblCache.Iops.Read.Miss,*"     { return 1 }	
					"ClusterNode.SblCache.Iops.Read.HitRate,*"  { return 5 }
                    default                                     { return 0 }
                }
            }
        }

        function GetClusterNodeUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "ClusterNode.Cpu.Usage,*"                                     { return 5 }
                    "ClusterNode.Cpu.Usage.Guest,*"                               { return 5 }
                    "ClusterNode.Memory.Usage.Guest,*"                            { return 4 }
                    "VM.Memory.Maximum,*"                      { return 4 }
                    "ClusterNode.Memory.Usage.Host,*"                             { return 4 }
                    "ClusterNode.Cpu.Usage.Host,*"                                { return 5 }
                    "ClusterNode.Memory.Total,*"                                  { return 4 }
                    "ClusterNode.Memory.Available,*"                              { return 4 }
                    "ClusterNode.Memory.Usage,*"                              { return 4 }
                    "NetAdapter.Bandwidth.Inbound,*"                   { return 7 }
                    "NetAdapter.Bandwidth.Outbound,*"                  { return 7 }
                    "NetAdapter.Bandwidth.Total,*"                     { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Inbound,*"              { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Outbound,*"             { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Total,*"                { return 7 }
                    "PhysicalDisk.Capacity.Size.Used,*"         { return 4 }
                    "PhysicalDisk.Capacity.Size.Total,*"        { return 4 }
                    "PhysicalDisk.Cache.Size.Total,*"           { return 4 }
                    "PhysicalDisk.Cache.Size.Dirty,*"           { return 4 }
					"ClusterNode.CsvCache.Iops.Read.Hit,*"      { return 1 }
					"ClusterNode.CsvCache.Iops.Read.Miss,*"     { return 1 }
					"ClusterNode.CsvCache.Iops.Read.HitRate,*"  { return 5 }
					"ClusterNode.SblCache.Iops.Read.Hit,*"      { return 1 }
					"ClusterNode.SblCache.Iops.Read.Miss,*"     { return 1 }	
					"ClusterNode.SblCache.Iops.Read.HitRate,*"  { return 5 }
                    "ClusterNode.Storage.Degraded,*"               { return 4 }
                    default                                                { return 0 }
                }
            }
        }

        function GetVMUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "VM.Cpu.Usage,*"                                  { return 5 }
                    "VM.Memory.Total,*"                               { return 4 }
                    "VM.Memory.Available,*"                           { return 4 }
                    "VM.Memory.Pressure,*"                            { return 0 }
                    "VM.Memory.Assigned,*"                            { return 4 }
                    "VM.Memory.Minimum,*"                             { return 4 }
                    "VM.Memory.Maximum,*"                             { return 4 }
                    "VM.Memory.Startup,*"                             { return 4 }
                    "VHD.Latency.Average,*"                                       { return 3 }
                    "VHD.Throughput.Read,*"                                       { return 2 }
                    "VHD.Throughput.Write,*"                                      { return 2 }
                    "VHD.Throughput.Total,*"                                      { return 2 }
                    "VHD.IOPS.Read,*"                                             { return 1 }
                    "VHD.IOPS.Write,*"                                            { return 1 }
                    "VHD.IOPS.Total,*"                                            { return 1 }
                    "VMNetworkAdapter.Bandwidth.Inbound,*"                       { return 7 }
                    "VMNetworkAdapter.Bandwidth.Outbound,*"                      { return 7 }
                    "VMNetworkAdapter.Bandwidth.Total,*"                         { return 7 }
                    default                                                       { return 0 }
                }
            }
        }

        function GetVHDUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "VHD.Latency.Average,*"       { return 3 }
                    "VHD.Throughput.Read,*"       { return 2 }
                    "VHD.Throughput.Write,*"      { return 2 }
                    "VHD.Throughput.Total,*"      { return 2 }
                    "VHD.IOPS.Read,*"             { return 1 }
                    "VHD.IOPS.Write,*"            { return 1 }
                    "VHD.IOPS.Total,*"            { return 1 }
                    "VHD.Size.Current,*"          { return 4 }
                    "VHD.Size.Maximum,*"          { return 4 }
                    default                       { return 0 }
                }
            }
        }

        function GetPhysicalDiskUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "PhysicalDisk.IOPS.*"                       { return 1 }
                    "PhysicalDisk.Throughput.*"                 { return 2 }
                    "PhysicalDisk.Latency.*"                    { return 3 }
                    "PhysicalDisk.Capacity.Size.Used,*"         { return 4 }
                    "PhysicalDisk.Capacity.Size.Total,*"        { return 4 }
                    "PhysicalDisk.Cache.Size.Total,*"           { return 4 }
                    "PhysicalDisk.Cache.Size.Dirty,*"           { return 4 }
                    default                                     { return 0 }
                }
            }
        }

        function GetVolumeUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "Volume.IOPS.*"       { return 1 }
                    "Volume.Throughput.*" { return 2 }
                    "Volume.Latency.*"    { return 3 }
                    "Volume.Size.*"       { return 4 }
                    default               { return 0 }
                }
            }
        }

        function GetNetworkAdapterUnits
        {
            param([string]$SeriesName)
            process
            {
                switch -wildcard ($SeriesName)
                {
                    "NetAdapter.Bandwidth.Inbound,*"                   { return 7 }
                    "NetAdapter.Bandwidth.Outbound,*"                  { return 7 }
                    "NetAdapter.Bandwidth.Total,*"                     { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Inbound,*"              { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Outbound,*"             { return 7 }
                    "NetAdapter.Bandwidth.RDMA.Total,*"                { return 7 }
                    default                                                { return 0 }
                }
            }
        }

        $unitFunction=$Function:GetClusterUnits

        switch($psCmdlet.ParameterSetName)
        {
            "ByCluster"
            {
                if($Cluster)
                {
					$ClusterName = $Cluster.Name
                }
                else
                {
                    $WmiCluster=Get-CimInstance -namespace "root\mscluster" -ClassName "MSCluster_Cluster" -CimSession $CimSession
                    $ClusterName = $WmiCluster.Name
                }

                $SeriesNames += Initalize-SeriesData -TagetId_ "$($ClusterName)" -ObjectTypeName_ "Cluster" -ObjectDescription_ "Cluster $($ClusterName)" -SourceSeriesName_ $ClusterSeriesName

                $unitFunction=$Function:GetClusterUnits
            }

            "ByClusterNode"
            {
                foreach($clusterNode_ in $ClusterNode)
                {
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($clusterNode_.Name)" -ObjectTypeName_ "ClusterNode" -ObjectDescription_ "ClusterNode $($clusterNode_.Name)" -SourceSeriesName_ $ClusterNodeSeriesName
                }

                $unitFunction=$Function:GetClusterNodeUnits
            }

            "ByVM"
            {
                foreach($virtualMachine_ in $VM)
                {
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($virtualMachine_.VMId)" -ObjectTypeName_ "VM" -ObjectDescription_ "VM $($virtualMachine_.Name)" -SourceSeriesName_ $VMSeriesName
                }

                $unitFunction=$Function:GetVMUnits
            }
            "ByVHD"
            {
                foreach($vhd_ in $VHD)
                {
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($vhd_.Path)" -ObjectTypeName_ "VHD" -ObjectDescription_ "VHD $($vhd_.Path)" -SourceSeriesName_ $VHDSeriesName
                }

                $unitFunction=$Function:GetVHDUnits
            }
            "ByPhysicalDisk"
            {
                foreach($physicalDisk_ in $PhysicalDisk)
                {
                    $subObjectId =$physicalDisk_.ObjectId.Replace("`"","").Split(":")
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($subObjectId[$subObjectId.Count -1])" -ObjectTypeName_ "PhysicalDisk" -ObjectDescription_ "PhysicalDisk $($physicalDisk_.SerialNumber)" -SourceSeriesName_ $PhysicalDiskSeriesName
                }

                $unitFunction=$Function:GetPhysicalDiskUnits
            }
            "ByVolume"
            {
                foreach($volume_ in $Volume)    
                {
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($volume_.UniqueId)" -ObjectTypeName_ "Volume" -ObjectDescription_ "Volume $($volume_.FileSystemLabel)" -SourceSeriesName_ $VolumeSeriesName
                }

                $unitFunction=$Function:GetVolumeUnits
            }
            "ByNetAdapter"
            {
                foreach($networkAdapter_ in $NetworkAdapter)
                {
                    $SeriesNames += Initalize-SeriesData -TagetId_ "$($networkAdapter_.InterfaceGuid)" -ObjectTypeName_ "NetAdapter" -ObjectDescription_ "NetAdapter $($networkAdapter_.InterfaceDescription)" -SourceSeriesName_ $NetAdapterSeriesName
                }

                $unitFunction=$Function:GetNetworkAdapterUnits
            }
            API
            {

            }
            default
            {
                Write-Error -Message "Not Supported $type"
                return
            }
        }

        $apiScriptBlock = {
            param(
                $blockSession,
                [string]$blockKey,
                [string]$blockStreamName,
                $blockFlags
            )

            Import-Module FailoverClusters\ClusterHealthService.cdxml -Verbose:$false

            Write-Progress -Activity "Get-ClusterPerformanceHistory" -PercentComplete 33 -CurrentOperation "Querying the database..." -Status "1/3"

            Write-Verbose -Message "SeriesName: '$blockKey' StreamName:'$blockStreamName'"

            # Although its only one key we need to make it an array for WMI
            [string[]]$blockMetricNames=@()
            $blockMetricNames+=$blockKey

            $outputResults = Get-ClusterHealth -CimSession $blockSession | Invoke-CimMethod -MethodName GetMetric -CimSession $blockSession -Arguments @{MetricName=$blockMetricNames;StreamName=$blockStreamName;Flags=$blockFlags} -ErrorAction Stop

            Write-Progress -Activity "Get-ClusterPerformanceHistory" -PercentComplete 67 -CurrentOperation "Building results..." -Status "2/3"

			foreach($output in $outputResults)
            {
                $member = $output | Get-Member
                if($member[0].TypeName.ToString().Equals("Microsoft.Management.Infrastructure.CimMethodResult#MSCluster_ClusterHealthService#GetMetric", [stringcomparison]::CurrentCultureIgnoreCase))
                {
                    Write-Verbose -Message "Result: $($output.ReturnValue)"
					break;
                }
            }

			foreach($output in $outputResults.ItemValue)
            {
					if($output.Records.count -eq 0)
					{
						continue
					}
					$output | Add-Member -MemberType NoteProperty -Name Value -Value $output.Records[0].Value 
					$output | Add-Member -MemberType NoteProperty -Name Time -Value $output.Records[0].TimeStamp
            }

			$script:results += $outputResults[0..$outputResults.count].ItemValue

            Write-Progress -Activity "Get-ClusterPerformanceHistory" -Completed -Status "3/3"
        }

        $defaultScriptBlock = {
            param(
                $blockSession,
                $blockarray,
                [string]$blockStreamName,
                $blockFlags,
                [scriptblock]$blockUnitFunction
            )

            # Cast the objectarray to the right type.
            $blockSeriesNames = $blockarray
            Import-Module FailoverClusters\ClusterHealthService.cdxml -Verbose:$false

            Write-Progress -Activity "Get-ClusterPerformanceHistory" -PercentComplete 33 -CurrentOperation "Querying the database..." -Status "1/3"

            [string[]]$blockMetricNames =@()
            $blockMetricNames = $blockSeriesNames.Keys

            $outputResults = Get-ClusterHealth -CimSession $blockSession | Invoke-CimMethod -MethodName GetMetric -CimSession $blockSession -Arguments @{MetricName=$blockMetricNames;StreamName=$blockStreamName;Flags=$blockFlags} -ErrorAction Stop

            Write-Progress -Activity "Get-ClusterPerformanceHistory" -PercentComplete 67 -CurrentOperation "Building results..." -Status "2/3"

            foreach($output in $outputResults.ItemValue)
            {
                if($null -eq $output.MetricId)
                {
                    continue
                }

                $blockObjectName = $blockSeriesNames.Get_Item($output.MetricId)
                $output | Add-Member -MemberType NoteProperty -Name ObjectDescription -Value $blockObjectName
                $output | Add-Member -MemberType NoteProperty -Name Unit -Value $($blockUnitFunction.Invoke($output.MetricId) )
				$output | Add-Member -MemberType NoteProperty -Name Value -Value $output.Records[0].Value 
				$output | Add-Member -MemberType NoteProperty -Name Time -Value $output.Records[0].TimeStamp
            }

            $script:results += $outputResults[0..$outputResults.count].ItemValue
            Write-Progress -Activity "Get-ClusterPerformanceHistory" -Completed -Status "3/3"
        }

        switch($psCmdlet.ParameterSetName)
        {
            "Api"
            {
                if($psCmdlet.ShouldProcess("Using TimeFrame $($Stream) for: $SeriesKeyName", "Get-Metric"))
                {
                    &$apiScriptBlock $CimSession $SeriesKeyName $Stream $flags
                }
            }
            default
            {
                if ($psCmdlet.ShouldProcess("Using TimeFrame $($TimeFrame) for:`n$($SeriesNames.Keys)", "Get-Metric") )
                {
                    &$defaultScriptBlock $CimSession $SeriesNames $TimeFrame $flags $unitFunction
                }
            }
        }
    }

    End
    {

        if(($script:results).Length -le 1 )
        {
            $clusterperformancedisk = Get-VirtualDisk | where FriendlyName -eq "ClusterPerformanceHistory"

            if(!$clusterperformancedisk)
            {
                Write-Warning "Can't find the 'ClusterPerformanceHistory' volume. If it was deleted, run 'Start-ClusterPerformanceHistory' to create it again. It might take a minute for the volume to be provisioned."
            }
        }

        
        switch($psCmdlet.ParameterSetName)
        {
            "Api"
            {
                return $script:results | Sort-Object ObjectDescription,MetricId,Time
            }
            default
            {
                return $script:results | Sort-Object ObjectDescription,MetricId,Time
            }
        }
    }
}
Set-Alias Get-ClusterPerf -Value Get-ClusterPerformanceHistory

function Get-HealthFault
{
    [CmdletBinding(DefaultParameterSetName="ByCluster", SupportsShouldProcess, ConfirmImpact="none")]
    param
    (
        [Microsoft.FailoverClusters.PowerShell.Cluster]
        [parameter(
            Position=0,
            Mandatory=$false,
            ParameterSetName="ByCluster",
            ValueFromPipeline= $true
        )]
        $Cluster,

        [parameter(
            Position=0,
            Mandatory=$True,
            ParameterSetName="ByApi",
            ValueFromPipeline=$false
        )]
        $ReportingType,

        [parameter(
            Position=1,
            Mandatory=$True,
            ParameterSetName="ByApi",
            ValueFromPipeline=$false
        )]
        $ReportingKey,

        [Microsoft.Management.Infrastructure.CimSession]
        $CimSession
    )

    Begin
    {
        Import-Module FailoverClusters\ClusterHealthService.cdxml -Verbose:$false
        $script:results=@()
    }

    Process
    {
        [System.String]$ReportingType_ = $null
        [System.String]$ReportingKey_ = $null

        Write-Progress -Activity "Get-HealthFault" -PercentComplete 0 -CurrentOperation "Gathering objects" -Status "0/4"

        if (-not $CimSession)
        {
            $CimSession = New-CimSession -Verbose:$false
        }

        switch($psCmdlet.ParameterSetName)
        {
            "ByCluster"
            {
                #For cluster we allow the default to be the local cluster.
                #If no local cluster then exit.
                if(-not $Cluster)
                {
                    $WmiCluster = Get-CimInstance -namespace "root\mscluster" -ClassName "MSCluster_Cluster" -CimSession $CimSession
                    $ClusterName = $WmiCluster.Name
                }
                else
                {
					$ClusterName = $Cluster.Name
                }

                $ReportingKey_ = $ClusterName
                $ReportingType_ = "Microsoft.Health.EntityType.Cluster"
            }
            "ByApi"
            {
                $ReportingKey_=$ReportingKey
                $ReportingType_=$ReportingType
            }
            default
            {
                return
            }
        }


        Write-Progress -Activity "Get-HealthFault" -PercentComplete 30 -CurrentOperation "Gathering objects done" -Status "1/4"

        $scriptBlock = {
            [CmdletBinding()]
            param(
                #[Microsoft.Management.Infrastructure.CimSession]
                #Cannot special type it as it gets serialized and deserialized differently
                $_CimSession,

                [System.String]
                $_ReportingKey,

                [System.String]
                $_ReportingType
            )

            process
            {
                Write-Progress -Activity "Get-HealthFault" -PercentComplete 60 -CurrentOperation "Executing  $($VerbosePreference)method" -Status "2/4"

                $script:results = Get-ClusterHealth -CimSession $_CimSession | Get-InternalHealthFault -ReportingKey $_ReportingKey -ReportingType $_ReportingType -ErrorAction Stop -CimSession $_CimSession

                Write-Progress -Activity "Get-HealthFault" -PercentComplete 90 -CurrentOperation "Processing results" -Status "3/4"

                # Sort the results by perceived Severity
                $script:results = $script:results | Sort-Object -Property PerceivedSeverity
            }
        }

        if($PSCmdlet.ShouldProcess("[$ReportingType_]$ReportingKey_", "Get-HealthFault"))
        {
            &$scriptBlock $CimSession $ReportingKey_ $ReportingType_
        }
    }

    End
    {
        Write-Progress -Activity "Get-HealthFault" -Completed -Status "4/4"
        return $script:results
    }
}

Function Start-ClusterPerformanceHistory {
    [CmdletBinding()]
    Param (
        [Microsoft.Management.Infrastructure.CimSession]
        $CimSession
        )

    Begin
    {
        $noSessionPassed = $false
        if (-not $CimSession)
        {
            $noSessionPassed = $true
            $CimSession = New-CimSession -Verbose:$false
        }
    }

    Process
    {
        try
        {
            $HealthResource = Get-CimInstance -namespace "root\mscluster" -Query "Select * from MSCluster_Resource Where Type like 'health service'" -CimSession $CimSession -ErrorAction Stop

            If ($HealthResource) {
                If ($HealthResource.State -Eq 2) {
                    $StorageSubSystem = Get-StorageSubSystem Cluster* -CimSession $CimSession -ErrorAction Stop
                    If ( ($StorageSubSystem | Get-StorageHealthSetting -Name "System.PerformanceHistory.Path" -CimSession $CimSession -ErrorAction Stop).Value ) {
                        throw "Cluster performance history is already running."
                    }
                    Else {
                        $StorageSubSystem | Set-StorageHealthSetting -Name "System.PerformanceHistory.AutoProvision.Enabled" -Value "True" -CimSession $CimSession -ErrorAction Stop
                        Write-Output "Starting cluster performance history. This may take a minute..."
                    }
                }
                Else {
                   throw "Cannot start cluster performance history because the Health cluster resource is not online."
                }
            }
            Else {
                throw "Cannot start cluster performance history because the Health cluster resource was not found."
            }
        }
        catch
        {
            if($noSessionPassed)
            {
                Write-Warning "To run this command from outside the cluster, use the -CimSession parameter."
            }
            throw
        }
    }
    End
    {
    }
}
Set-Alias Start-ClusterPerf -Value Start-ClusterPerformanceHistory

Function Stop-ClusterPerformanceHistory {
    [CmdletBinding()]
    Param (
        [Parameter()]
        [Switch]$DeleteHistory,

        [Microsoft.Management.Infrastructure.CimSession]
        $CimSession
    )

    Begin
    {
        $noSessionPassed = $false
        if (-not $CimSession)
        {
            $noSessionPassed = $true
            $CimSession = New-CimSession -Verbose:$false
        }
    }

    Process
    {
        try
        {
            $HealthResource = Get-CimInstance -namespace "root\mscluster" -Query "Select * from MSCluster_Resource Where Type like 'health service'" -CimSession $CimSession -ErrorAction Stop

            If ($HealthResource) {
                If ($HealthResource.State -Eq 2) {
                    $StorageSubSystem = Get-StorageSubSystem Cluster* -CimSession $CimSession -ErrorAction Stop
                    $StorageSubSystem | Remove-StorageHealthSetting -Name "System.PerformanceHistory.Path" -CimSession $CimSession -ErrorAction Stop
                    If ($DeleteHistory) {
                        $StorageSubSystem | Set-StorageHealthSetting -Name "System.PerformanceHistory.DeleteHistory" -Value "True" -CimSession $CimSession -ErrorAction Stop
                        Write-Output "Cluster Performance history stopped and history deleted."
                    }
                    Else {
                        Write-Output "Cluster Performance history stopped. To delete history, run the cmdlet again with the -DeleteHistory flag."
                    }
                }
                Else {
                    throw "Cannot stop cluster performance history because the Health cluster resource is not online."
                }
            }
            Else {
                throw "Cannot stop cluster performance history because the Health cluster resource was not found."
            }
        }
        catch
        {
            if($noSessionPassed)
            {
                Write-Warning "To run this command from outside the cluster, use the -CimSession parameter."
            }
            throw
        }
    }

    End
    {
    }
}
Set-Alias Stop-ClusterPerf -Value Stop-ClusterPerformanceHistory

Export-ModuleMember Get-ClusterPerformanceHistory 
Export-ModuleMember -Alias Get-ClusterPerf
Export-ModuleMember Get-HealthFault
Export-ModuleMember Stop-ClusterPerformanceHistory
Export-ModuleMember -Alias Stop-ClusterPerf
Export-ModuleMember Start-ClusterPerformanceHistory
Export-ModuleMember -Alias Start-ClusterPerf