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

Below contains a GitHub Actions workflow to automate Terraform-based infrastructure changes. The pipeline ensures secure and controlled deployment processes across sandbox and production environments


## Workflow Overview
The CI/CD pipeline is triggered by:
- **Push events** on the `main` branch and branches prefixed with `feature/`.
- **Pull request events** targeting branches prefixed with `feature/`.

### Environments
- **Sandbox**: Used for testing infrastructure changes in feature branches.
- **Production**: Used for deploying approved changes from the `main` branch.

## Triggering the Pipeline

### Feature Branches (Sandbox Environment)
1. **Push** or **create a pull request** to a branch starting with `feature/`.
2. The workflow will:
   - Validate and initialize Terraform.
   - Plan infrastructure changes.
   - Automatically apply changes to the sandbox environment for push events.

### Main Branch (Production Environment)
1. **Push** changes to the `main` branch.
2. The workflow will:
   - Validate and initialize Terraform.
   - Plan changes for the production environment.
   - Await manual approval before applying changes.

## Managing the Pipeline

### AWS Credentials and Secrets
Sensitive information such as AWS credentials must be stored securely in **GitHub Secrets**:
- `AWS_ACCESS_KEY_ID`: Your AWS Access Key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS Secret Access Key.

To configure secrets:
1. Navigate to **Settings > Secrets and variables > Actions** in your repository.
2. Add the necessary secrets with their respective values.

### Manual Approval for Production
Before applying changes to production:
1. Navigate to the **Actions** tab in your repository.
2. Select the most recent workflow run triggered by a push to `main`.
3. Approve the manual step when prompted.

## Key Workflow Steps

1. **Terraform Validation**: Ensures the configuration files are syntactically correct.
2. **Terraform Initialization**: Prepares Terraform by downloading provider plugins and setting up the backend.
3. **Terraform Plan**:
   - For sandbox: Generates a plan using `sandbox.tfvars`.
   - For production: Generates a plan using `production.tfvars`.
4. **Terraform Apply**:
   - Automatically applies changes in the sandbox environment for feature branches.
   - Requires manual approval to apply changes to production.

## Requirements
- **Terraform**: Version `1.5.7`.
- **AWS Account**: Configured with appropriate IAM roles and policies.

## Notes
- Only changes pushed to `feature/` branches are applied automatically to the sandbox environment.
- Production changes are restricted to the `main` branch and require manual approval.

For further details, refer to the GitHub Actions workflow file in `.github/workflows/terraform.yml`.

## Troubleshooting
- **Invalid AWS Credentials**: Ensure the secrets are correctly configured.
- **Terraform Errors**: Review the logs in the GitHub Actions workflow run to identify configuration issues.