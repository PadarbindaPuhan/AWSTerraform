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
    
    Write-Host "Check if bucket $bucketName exists in region $region and create it if not"
    $bucketInfo= Get-S3Bucket -BucketName $bucketName 
    
    if($bucketInfo){
        Write-Host "Bucket $bucketName exists"
    }
    else{
        Write-Host "Creating new bucket $bucketName"
        Import-Module ./create-backend-bucket.psm1
        New-BackendBucket -bucketName $bucketName -region $region
    }

    Write-Host "Check if DynamoDB table $dynamoDbTableName exists in region $region and create it if not"

    $dynamoDbTableInfo= Get-DDBTable -TableName $dynamoDbTableName
    if($dynamoDbTableInfo){
        Write-Host "DynamoDB table $dynamoDbTableName exists"
    }
    else{
        Write-Host "Creating new DynamoDB table $dynamoDbTableName"
        Import-Module ./create-backend-backend-dynamodb.psm1
        New-BackendDynamoDBTable -tableName $dynamoDbTableName -region $region
    }

}
catch{
    Write-Host "Error creating bucket"+$_.message
    exit(1)
}


