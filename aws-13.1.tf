
resource "aws_instance" "freebsd13-nuvym"       {
 ami                                    =         "ami-0f45c3009fb2b4047" #NUVYM's FreeBSD
 instance_type                          =         "t3.micro"
 vpc_security_group_ids                 =         ["sg-080987c4ba17e9136"]
 subnet_id                              =         "subnet-0a1d7504d781a0962"
 associate_public_ip_address            =         "true"
 iam_instance_profile                   =        "nuvym_ec2_role" 
 cpu_threads_per_core                   =         "2" 
 instance_initiated_shutdown_behavior   =         "stop"
 disable_api_termination                =         "true"
 monitoring                             =         "false" 
 tenancy                                =         "default"

root_block_device                       { 
 volume_size                            =         "10"
 delete_on_termination                  =         "true" 
 encrypted                              =         "false" 
}



tags                                    =         {
 Name                                   =         "freebsd13-nuvym"
} 

volume_tags                             = {
 Name                                   =         "freebsd13-nuvym"
}

availability_zone                       =        "us-east-1a"

key_name                                =        "test" 



}
