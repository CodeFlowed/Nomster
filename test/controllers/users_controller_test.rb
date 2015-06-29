require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "user sees personal dashboard with URL /users/:id" do
    user = FactoryGirl.create(:user)
    get :show, :id => user.id
    assert_response :success
  end

  test "user personal dashboard page, not found" do
  	get :show, :id => 'DOH'
  	assert_response :not_found
  end
end
