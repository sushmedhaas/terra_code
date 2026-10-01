resource "aws_instance" "web" {
  ami                         = "ami-0029b950ae2d92ba5"
  associate_public_ip_address = true
  availability_zone           = "us-west-2a"
  disable_api_stop            = false
  disable_api_termination     = false
  ebs_optimized               = true
  force_destroy               = false
  get_password_data           = false
  hibernation                 = false
  host_id                     = null
  iam_instance_profile        = null

  instance_initiated_shutdown_behavior = "stop"
  instance_lifecycle                   = null
  instance_type                        = "t3.small"


  key_name                   = "Linux_diff_reg"
  monitoring                 = false
  outpost_arn                = null
  password_data              = null
  placement_group            = null
  placement_group_id         = null
  placement_partition_number = 0


  private_ip = "172.31.34.66"


  region                = "us-west-2"
  secondary_private_ips = []
  security_groups = [
    "linux_sg",
  ]
  source_dest_check        = true
  spot_instance_request_id = null
  subnet_id                = "subnet-0ed350afa18def561"
  tags = {
    "Env"  = "dev"
    "Name" = "web"
  }
}