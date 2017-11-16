require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get customers_all_url
    assert_response :success
  end

  test "should get new" do
    get customers_new_url
    assert_response :success
  end

end
