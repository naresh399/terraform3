provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_elasticache_cluster" "test1" {
  cluster_id = "cluster-test"
  engine = "redis"
  node_type = "cache.t2.micro"
  port = 6379
  num_cache_nodes = 1
  parameter_group_name = "default.redis3.2"
}

resource "aws_s3_bucket" "b" {
  bucket = "nareshb-test-bucket"
  acl = "private" #public-read

  tags {
    Name ="Test Bucket"
    Environment ="Dev"
  }
}