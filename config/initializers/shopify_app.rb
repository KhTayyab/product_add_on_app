ShopifyApp.configure do |config|
  config.application_name = "Simply Product Add On"
  config.api_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  config.secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  config.scope = "read_products, write_products"
  config.embedded_app = true
end
