require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "for validation error when updating a place to have an empty name" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place, :user => user, :name => "Ed's BBQ")	

  	# place_id = place.id
  	assert_no_difference '(Place.find_by :id => place.id).name.length' do
  		place.update(:name => "")
  	end
  end

  test "that DELETE /places/1 destroys the Place with id 1" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	FactoryGirl.create(:place, :user => user, :id => 1)

  	assert_difference('Place.count', -1) do
  		delete :destroy, :id => 1  		
  	end
  end
end
