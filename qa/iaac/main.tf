module "iaac_module" {
  source = "../../modules/iaac"
  environment = "qa"
  location = "centralus"
  name = "ecom"
}
