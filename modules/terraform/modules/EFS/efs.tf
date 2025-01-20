# create key from key management system
<<<<<<< HEAD
resource "aws_kms_key" "shali-kms" {
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_kms_key" "shali-kms" {
=======
resource "aws_kms_key" "narbyd-kms" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_kms_key" "shali-kms" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_kms_key" "narbyd-kms" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_kms_key" "shali-kms" {
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
resource "aws_kms_key" "narbyd-kms" {
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
resource "aws_kms_key" "shali-kms" {
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  description = "KMS key "
  policy      = <<EOF
  {
  "Version": "2012-10-17",
  "Id": "kms-key-policy",
  "Statement": [
    {
      "Sid": "Enable IAM User Permissions",
      "Effect": "Allow",
      "Principal": { "AWS": "arn:aws:iam::${var.account_no}:user/dybran" },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
EOF
}

# create key alias
resource "aws_kms_alias" "alias" {
  name          = "alias/kms"
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  target_key_id = aws_kms_key.shali-kms.key_id
}

# create Elastic file system
resource "aws_efs_file_system" "shali-efs" {
  encrypted  = true
  kms_key_id = aws_kms_key.shali-kms.arn
<<<<<<< HEAD
=======
=======
  target_key_id = aws_kms_key.narbyd-kms.key_id
=======
  target_key_id = aws_kms_key.shali-kms.key_id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# create Elastic file system
resource "aws_efs_file_system" "shali-efs" {
  encrypted  = true
<<<<<<< HEAD
  kms_key_id = aws_kms_key.narbyd-kms.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  kms_key_id = aws_kms_key.shali-kms.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  target_key_id = aws_kms_key.narbyd-kms.key_id
=======
  target_key_id = aws_kms_key.shali-kms.key_id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# create Elastic file system
resource "aws_efs_file_system" "shali-efs" {
  encrypted  = true
<<<<<<< HEAD
  kms_key_id = aws_kms_key.narbyd-kms.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  kms_key_id = aws_kms_key.shali-kms.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  target_key_id = aws_kms_key.narbyd-kms.key_id
=======
  target_key_id = aws_kms_key.shali-kms.key_id
>>>>>>> 1e0584b (first commit on this shali project updated)
}

# create Elastic file system
resource "aws_efs_file_system" "shali-efs" {
  encrypted  = true
<<<<<<< HEAD
  kms_key_id = aws_kms_key.narbyd-kms.arn
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  kms_key_id = aws_kms_key.shali-kms.arn
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)

tags = merge(
    var.tags,
    {
<<<<<<< HEAD
      Name = "shali-file-system"
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      Name = "shali-file-system"
=======
      Name = "narbyd-file-system"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-file-system"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-file-system"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-file-system"
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
      Name = "narbyd-file-system"
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
      Name = "shali-file-system"
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
    },
  )
}


# set first mount target for the EFS 
resource "aws_efs_mount_target" "subnet-1" {
<<<<<<< HEAD
  file_system_id  = aws_efs_file_system.shali-efs.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  file_system_id  = aws_efs_file_system.shali-efs.id
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  subnet_id       = var.efs-subnet-1
  security_groups = var.efs-sg
}


# set second mount target for the EFS 
resource "aws_efs_mount_target" "subnet-2" {
<<<<<<< HEAD
  file_system_id  = aws_efs_file_system.shali-efs.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  file_system_id  = aws_efs_file_system.shali-efs.id
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id  = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id  = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  subnet_id       = var.efs-subnet-2
  security_groups = var.efs-sg
}


# create access point for wordpress
resource "aws_efs_access_point" "wordpress" {
<<<<<<< HEAD
  file_system_id = aws_efs_file_system.shali-efs.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  file_system_id = aws_efs_file_system.shali-efs.id
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)

  posix_user {
    gid = 0
    uid = 0
  }

  root_directory {
    path = "/wordpress"

    creation_info {
      owner_gid   = 0
      owner_uid   = 0
      permissions = 0755
    }

  }

}


# create access point for tooling
resource "aws_efs_access_point" "tooling" {
<<<<<<< HEAD
  file_system_id = aws_efs_file_system.shali-efs.id
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  file_system_id = aws_efs_file_system.shali-efs.id
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
=======
  file_system_id = aws_efs_file_system.narbyd-efs.id
>>>>>>> 154ecd7 (Initial commit: Set up project structure with Terraform configuration, CI/CD, and documentation.)
=======
  file_system_id = aws_efs_file_system.shali-efs.id
>>>>>>> 1e0584b (first commit on this shali project updated)
>>>>>>> 355ac93 (Initial commit: Add CHANGELOG and update documentation)
  posix_user {
    gid = 0
    uid = 0
  }

  root_directory {

    path = "/tooling"

    creation_info {
      owner_gid   = 0
      owner_uid   = 0
      permissions = 0755
    }

  }
}

