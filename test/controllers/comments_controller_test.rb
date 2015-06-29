require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "comment was stored in the database" do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place, :user => user)
		
		assert_difference 'Comment.count' do
			post :create, {:place_id => place.id, :comments => { :message => 'Yay', :rating => '5_stars' }}
		end

		# assert_redirected_to places_path
		# assert_equal 1, user.places.comments.count
  end
end
