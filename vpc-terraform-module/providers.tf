provider "aws" {
  alias  = "nonprod"
  region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::699475926599:role/NonProd"
    session_name = "TerraformNonProd"
  }
}

provider "aws" {
  alias  = "prod"
  region = "us-east-1"

  assume_role {
    role_arn     = "arn:aws:iam::585768170315:role/Production"
    session_name = "TerraformProd"
  }
}
