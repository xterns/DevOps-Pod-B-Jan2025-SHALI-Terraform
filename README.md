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

## Changelog

This repository follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

### Updating the Changelog

- Before merging a PR, update `CHANGELOG.md` under the relevant section.
- Follow the format:
  - **Added**: For new features.
  - **Changed**: For modifications.
  - **Deprecated**: For soon-to-be removed features.
  - **Removed**: For now-removed features.
  - **Fixed**: For bug fixes.
  - **Security**: For security patches.
- Reference the relevant issue or PR number.

