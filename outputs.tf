output "assigned_template_ids" {
  description = "Map of template names to their IDs"
  value       = { for k, v in data.env0_template.templates : k => v.id }
}
