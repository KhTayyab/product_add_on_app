require 'test_helper'

class ProductConfigrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_configration = product_configrations(:one)
  end

  test "should get index" do
    get product_configrations_url
    assert_response :success
  end

  test "should get new" do
    get new_product_configration_url
    assert_response :success
  end

  test "should create product_configration" do
    assert_difference('ProductConfigration.count') do
      post product_configrations_url, params: { product_configration: { option10: @product_configration.option10, option1: @product_configration.option1, option2: @product_configration.option2, option3: @product_configration.option3, option4: @product_configration.option4, option5: @product_configration.option5, option6: @product_configration.option6, option7: @product_configration.option7, option8: @product_configration.option8, option9: @product_configration.option9, option_count: @product_configration.option_count, product_name: @product_configration.product_name, product_sku: @product_configration.product_sku, shop_name: @product_configration.shop_name } }
    end

    assert_redirected_to product_configration_url(ProductConfigration.last)
  end

  test "should show product_configration" do
    get product_configration_url(@product_configration)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_configration_url(@product_configration)
    assert_response :success
  end

  test "should update product_configration" do
    patch product_configration_url(@product_configration), params: { product_configration: { option10: @product_configration.option10, option1: @product_configration.option1, option2: @product_configration.option2, option3: @product_configration.option3, option4: @product_configration.option4, option5: @product_configration.option5, option6: @product_configration.option6, option7: @product_configration.option7, option8: @product_configration.option8, option9: @product_configration.option9, option_count: @product_configration.option_count, product_name: @product_configration.product_name, product_sku: @product_configration.product_sku, shop_name: @product_configration.shop_name } }
    assert_redirected_to product_configration_url(@product_configration)
  end

  test "should destroy product_configration" do
    assert_difference('ProductConfigration.count', -1) do
      delete product_configration_url(@product_configration)
    end

    assert_redirected_to product_configrations_url
  end
end
