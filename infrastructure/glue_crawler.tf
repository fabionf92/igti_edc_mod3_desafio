# create glue crawler

resource "aws_glue_crawler" "processed_data_crawler2" {
  name          = "processed-data-crawler2"
  role          = aws_iam_role.glue_role.arn
  database_name = "edc_mod3_desafio_database"

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.bucket}/staging-zone/"
  }

  schema_change_policy {
    update_behavior = "UPDATE_IN_DATABASE"
    delete_behavior = "LOG"
  }

}