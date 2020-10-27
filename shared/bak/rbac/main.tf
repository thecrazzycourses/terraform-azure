module "rbac_module" {
  source = "..\/..\/modules\/rbac"
  environment = "dev"
  location = "centralus"
  name = "ecom"
}
