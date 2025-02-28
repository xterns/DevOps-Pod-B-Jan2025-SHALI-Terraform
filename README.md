<<<<<<< HEAD
# DevOps-Pod-B-Jan2025-SHALI-Terraform

# SHALI Terraform Repository

This repository contains Terraform scripts for managing the infrastructure for the SHALI project.

## Folder Structure Overview:

- **`modules/`**: Contains reusable Terraform modules for modularity.
- **`environments/`**: Holds configurations for each environment (e.g., `dev/`, `staging/`, `production/`).
- **`scripts/`**: Includes shell scripts for AMI hardening.
- **`packer/`**: Contains Packer templates for building hardened AMIs.
- **`ci-cd/`**: Contains CI/CD pipeline configurations, such as `github-actions.yml`, to automate testing, deployment, and integration processes.

- Added a `.gitkeep` file to folders to ensure that Git tracks the empty directory.

## Getting Started
1. Clone the repository:
   ```bash
    git clone https://github.com/xterns/DevOps-Pod-B-Jan2025-SHALI-Terraform.git

2. Navigate to the modules directory
    ```bash
    DevOps-Pod-B-Jan2025-SHALI-Terraform/modules$

3. Initialize Terraform:
    ```bash
    terraform init

4. Validate the configuration:
    ```bash
    terraform validate

5. Run a plan to preview changes:
    ```bash
    terraform plan
>>>>>>> folder
=======
# DevOps-Pod-B-Jan2025-SHALI-Terraform

## Prerequisites for the GitHub Actions CI/CD Pipeline

This repository contains a GitHub Actions CI/CD pipeline for managing Terraform infrastructure, automating changes, and ensuring secure execution with manual approvals for production.

- **Triggers:** Runs on push events to feature* (sandbox) and main (production), and pull requests to main for review. Hence any branch that is not main must be named starting with the prefix 'feature' in other for the workflow to be triggered on push from it. 
- **Process:** Includes Terraform init, validate, plan, and apply steps, with manual approval required for production changes.
- **Environment Handling:** Automatically applies changes to sandbox on feature branches, plans but requires approval for production on main. A backend.tf file referencing an s3 bucket, must be present in each environment's directory in other to maintain the authenticity of the statefile for each environment. Update the different backend.tf files with it's appropriate s3 bucket name. 
- **Manual Approval:** For production, an issue is created for approval, requiring at least 2 assignees to comment "yes" within 60 minutes.
