data "aws_availability_zones" "available" {
    state = "available"
}

data "aws_vpc" "default" {
  default = true
}


data "aws_route_table" "main" {
    vpc_id = data.aws_vpc.default.id
    filter {
        name = "association.main" # what ever route table is associated with default VPC.
        values = ["true"] # it is list of value
    }
}

# + main_route_table_info = {
#       + arn            = "arn:aws:ec2:us-east-1:682033463575:route-table/rtb-048dfccfc55bdc9f7"
#       + associations   = [
#           + {
#               + gateway_id                 = ""
#               + main                       = true
#               + route_table_association_id = "rtbassoc-06195e77a20c9e5ac"
#               + route_table_id             = "rtb-048dfccfc55bdc9f7"
#               + subnet_id                  = ""
#             },
#         ]
#       + filter         = [
#           + {
#               + name   = "association.main"
#               + values = [
#                   + "true",
#                 ]
#             },
#         ]
#       + gateway_id     = null
#       + id             = "rtb-048dfccfc55bdc9f7"
#       + owner_id       = "682033463575"
#       + route_table_id = "rtb-048dfccfc55bdc9f7"
#       + routes         = [
#           + {
#               + carrier_gateway_id         = ""
#               + cidr_block                 = "0.0.0.0/0"
#               + core_network_arn           = ""
#               + destination_prefix_list_id = ""
#               + egress_only_gateway_id     = ""
#               + gateway_id                 = "igw-073dc2a8b79dbaee4"
#               + instance_id                = ""
#               + ipv6_cidr_block            = ""
#               + local_gateway_id           = ""
#               + nat_gateway_id             = ""
#               + network_interface_id       = ""
#               + transit_gateway_id         = ""
#               + vpc_endpoint_id            = ""
#               + vpc_peering_connection_id  = ""
#             },
#         ]
#       + subnet_id      = null
#       + tags           = {}
#       + timeouts       = null
#       + vpc_id         = "vpc-0b09a7c0a50955c37"
#     }
#   + vpc_id                = (known after apply)