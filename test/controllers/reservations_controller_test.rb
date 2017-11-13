require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get reservations_all_url
    assert_response :success
  end

  test "should get new" do
    get reservations_new_url
    assert_response :success
  end

  test "should get edit" do
    get reservations_edit_url
    assert_response :success
  end

end
