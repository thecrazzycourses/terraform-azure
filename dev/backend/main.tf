module "backend_module" {
  source = "../../modules/backend"
  environment = "shared"
  location = "centralus"
}
