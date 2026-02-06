resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = local.tags
}

data "archive_file" "code_package" {
  type        = "zip"
  source_file = "../src/lambda_function.py"
  output_path = "../src/lambda_function.zip"
}

resource "aws_lambda_function" "lambda_function" {
  filename         = data.archive_file.code_package.output_path
  function_name    = "${local.name}-function"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "lambda_function.lambda_handler"
  source_code_hash = data.archive_file.code_package.output_path

  runtime = "python3.12"

  environment {
    variables = {
      env       = "dev"
      log_level = "info"
    }
  }

  tags = local.tags
}
