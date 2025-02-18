output "vpc_id" {
    value = aws_vpc.main.id
}

output "az_info" {
    value = data.aws_availability_zones.available
}


# #az_info = {
# #  names                  = [
# #           + "us-east-1a",
# #           + "us-east-1b",
# #           + "us-east-1c",
# #           + "us-east-1d",
# #           + "us-east-1e",
# #           + "us-east-1f",
# #  ]
# }

# aws_availability_zones = az_info.names[0,1,2,3,4,5]

