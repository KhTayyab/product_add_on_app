json.product_present true
json.product_configration do 
	json.product_name @product_configration.try(:product_name) 
	json.product_sku @product_configration.try(:product_sku) 
	json.option_count @product_configration.try(:option_count) 
	options_array = @product_configration.options_value
	json.options options_array.each_index do |index|
		json.option options_array[index]
	end
end