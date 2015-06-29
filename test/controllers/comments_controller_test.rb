require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "comment was stored in the database" do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place, :user => user)
		
		assert_difference 'Comment.count' do
			post :create, {:place_id => place.id, :comment => { :message => 'Yay', :rating => '5_stars' }}
		end

		assert_redirected_to place_path(place)
		
		comment = Comment.last
		assert_equal 'Yay', comment.message
		assert_equal '5_stars', comment.rating
  end
end
