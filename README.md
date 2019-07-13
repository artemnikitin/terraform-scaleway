# terraform-scaleway
Terraform config for running instances in Scaleway

### Setup
Add environmental variables with Scaleway API credentials
```shell
export SCALEWAY_ORGANIZATION=xxx
export SCALEWAY_TOKEN=yyy
```
### Run
From folder with config execute:
```shell
# to initialize
terraform init

# to create instance
terraform apply -auto-approve

# to destroy
terraform destroy -force
```
### Additional info
- description of Scaleway provider for Terraform https://www.terraform.io/docs/providers/scaleway/index.html
