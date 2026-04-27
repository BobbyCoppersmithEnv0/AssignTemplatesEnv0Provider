# Look up each template by name
data "env0_template" "templates" {
  for_each = toset(var.template_names)
  name     = each.key
}

# Assign each template to the project
resource "env0_template_project_assignment" "assignments" {
  for_each = toset(var.template_names)

  template_id = data.env0_template.templates[each.key].id
  project_id  = var.project_id
}
