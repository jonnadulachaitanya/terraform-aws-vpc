output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_ids" {
    value = aws_subnet.public.id
}

output "private_subnet_ids" {
    value = aws_subnet.private.id
}

output "database_subnet_ids" {
    value = aws_subnet.database.id
}

output "database_subnet_group_name"{
  value = aws_db_subnet_group.default.name
}

output "ig_id" {
    value = aws_internet_gateway.main.id
}

output "az_info" {
    value = data.aws_availability_zones.available
}

# Changes to Outputs:
#   + az_info = {
#       + all_availability_zones = null
#       + exclude_names          = null
#       + exclude_zone_ids       = null
#       + filter                 = null
#       + group_names            = [
#           + "us-east-1-zg-1",
#         ]
#       + id                     = "us-east-1"
#       + names                  = [
#           + "us-east-1a",
#           + "us-east-1b",
#           + "us-east-1c",
#           + "us-east-1d",
#           + "us-east-1e",
#           + "us-east-1f",
#         ]
#       + state                  = "available"
#       + timeouts               = null
#       + zone_ids               = [
#           + "use1-az4",
#           + "use1-az6",
#           + "use1-az1",
#           + "use1-az2",
#           + "use1-az3",
#           + "use1-az5",
#         ]
#     }
# }

# Peering 

output "aws_vpc_default" {
    value = data.aws_vpc.default
}

output "main_route_table_info" {
    value = data.aws_route_table.main
}