# Terraform Azure Modules
This repository contains Terraform modules for deploying various resources on Azure. Each module is self-contained and represents a specific Azure resource.

## Structure
The repository is organized into multiple directories, each representing a different Azure resource. Each directory contains three main files:

- `main.tf`: This is where the main Terraform configuration is written.
- `variables.tf`: This file defines the variables used in main.tf.
- `outputs.tf`: This file defines the outputs of main.tf.
##Usage
To use these modules, you need to have Terraform installed on your machine. Once you have Terraform installed, import the module, fill the required value (and optional value if needed), then run the following commands:
```
terraform init
terraform apply
```
Please ensure you have the correct Azure credentials set up on your machine.

## Resources
Each directory in this repository represents a different Azure resource. You can customize the configuration of each resource by modifying the variables in variables.tf within the respective directory. The outputs of each module are defined in outputs.tf.

## Contributing
Contributions are welcome! Please feel free to submit a pull request.

