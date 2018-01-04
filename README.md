# Terraform minimal

## Getting started

To get started with this repository 
1. first configure your aws crendentials with [aws cli](https://aws.amazon.com/cli) 
2. Then create a file named backend.conf at the root of this project containing ```bucket``` and ```key``` values like 
```
bucket = "terraform-xxxx"
key = "my-subfolder/terraform.tfstate"
```
3. Initialize the repository at the root of this project by running

```
terraform init -backend-config=backend.conf
```


## CHANGELOG 

### 1.0.2 changelog order fixed

* Changelog versions order fixed

### 1.0.1 variables references removed from s3 configuration

* Variables references where removed from s3 configurations, those will be provided by backend.conf file

### 1.0.0 terraform state file storage at s3

* This repository stores the tfstate file at a AWS S3 Bucket Key when initialized as indicated at ```Getting started``` section