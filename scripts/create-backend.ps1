param(
    [string]$bucketName,
    [string]$dynamoDb,
    [string]$region
)

try{
    
    $bucketInfo= Get-S3Bucket -BucketName $bucketName
    
    if($bucketInfo){
        Write-Host "Bucket $bucketName exists"
    }
    else{
        Write-Host "Creating new bucket $bucketName"
    }
}
catch{
    Write-Host "Error creating bucket"+$_.message
    exit(1)
}


