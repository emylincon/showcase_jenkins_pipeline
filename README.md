# showcase_jenkins_pipeline
This creates an Jenkins pipeline using terraform to deploy an ECS docker service
## To run
* first export aws credentials to environment variables
```
export AWS_ACCESS_KEY_ID="AXXXXXXX"
export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXX"
export AWS_DEFAULT_REGION="eu-west-1"
```
* create ssh keys for login
```
ssh-keygen -t rsa
```
* Initialize terraform workspace
```
terraform init
```
* deploy pipline
```
terraform apply
```

# Redeploy into ECS using aws
```
aws ecs update-service --cluster <your-cluster-name> --service <your-service-name> --force-new-deployment --region us-east-1
```
## example
```
aws ecs update-service --cluster "our-cluster" --service "python-service" --force-new-deployment --region eu-west-1 &>/dev/null  
```
