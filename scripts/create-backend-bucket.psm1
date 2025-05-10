Function New-BackendBucket {
    param(
        [Mandatory = $true]
        [string]$bucketName,

        [Mandatory = $true]
        [string]$region
    )
    try{
        Import-Module AWSPowerShell.NetCore

        New-S3Bucket -BucketName $bucketName -Region $region
        Write-Host "Created bucket $bucketName"
    }
    catch{
        Write-Host "Error creating bucket"+$_.message
        exit(1)
    }
}