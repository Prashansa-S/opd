#!/bin/bash
$ yq eval '.' -o=json $1 | jq -r '{description:.Description,tags:.Tags,bookmarkedBy:[],projectId:[],levelOfSharing:.0,sharedTo:[],name:.Name,studyType:"Public",resourceDetails:.Resources|map({description:.Description,arn:.ARN,region:.Region,type:.Type|select(.=="S3 Bucket")|"s3"}),moreInformation:.License,__v:0,isDeleted:false,repositoryName:"Registry of Open Data on AWS"}'

