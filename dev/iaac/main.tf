module "iaac_module" {
  source = "../../modules/iaac"
  environment = "dev"
  location = "centralus"
  name = "ecom"
}
