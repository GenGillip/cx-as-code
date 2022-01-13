
output "wrapcode_ids" {
  # value = [genesyscloud_routing_wrapupcode.wrapcodes.id]
  value = genesyscloud_routing_wrapupcode.wrapcodes[each.name]
}