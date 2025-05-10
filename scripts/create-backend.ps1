param(
    [Parameter(Mandatory = $true)]
    [string]$bucketName,

    [Parameter(Mandatory = $true)]
    [string]$dynamoDbTableName,

    [Parameter(Mandatory = $true)]
    [string]$region
)

try{
    Import-Module AWSPowerShell.NetCore
    
    $bucketInfo= Get-S3Bucket -BucketName $bucketName
    
    if($bucketInfo){
        Write-Host "Bucket $bucketName exists"
    }
    else{
        Write-Host "Creating new bucket $bucketName"
        Import-Module ./create-backend-bucket.psm1
        New-BackendBucket -bucketName $bucketName -region $region
    }
}
catch{
    Write-Host "Error creating bucket"+$_.message
    exit(1)
}


