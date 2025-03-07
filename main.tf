module "EC2_instance" {
  source       = "./module/EC2_instance"
  key_name     = "key_pair_name"
  machine_name = "machine_name"
}