require 'test_helper'

class UserProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get Products" do
    get user_products_Products_url
    assert_response :success
  end

  test "should get PaymentTypes" do
    get user_products_PaymentTypes_url
    assert_response :success
  end

  test "should get Orders" do
    get user_products_Orders_url
    assert_response :success
  end

end
