require 'test_helper'

class CustomerProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get Products" do
    get customer_products_Products_url
    assert_response :success
  end

  test "should get PaymentTypes" do
    get customer_products_PaymentTypes_url
    assert_response :success
  end

  test "should get Orders" do
    get customer_products_Orders_url
    assert_response :success
  end

end
