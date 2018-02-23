require 'test_helper'

class DeivseControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get deivse_users_url
    assert_response :success
  end

end
