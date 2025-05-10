param(
    [string]$bucketName,
    [string]$dynamoDb,
    [string]$region
)

try{
    
    $bucketInfo= Get-S3Bucket -BucketName $bucketName
    
}
catch{
    Write-Host "Error creating bucket"+$_.message
}


