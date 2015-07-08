require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "encoded format conversion to human-readable format" do
  	test_rating = Comment.new(:rating => '1_star')
  	expected = 'one star'
  	actual = test_rating.humanized_rating
  	assert_equal expected, actual



  end

  test "mail it out" do
  	u = FactoryGirl.create(:user)
  	p = FactoryGirl.create(:place)
	test_rating = Comment.new(:rating => '1_star', :place => p, :user => u)
	assert_equal 0, ActionMailer::Base.deliveries.size

	test_rating.save!

	assert_equal 1, ActionMailer::Base.deliveries.size
	
  	# Last email in there
  	mail = ActionMailer::Base.deliveries.last
  	assert_equal [p.user.email], mail.to

  end

end
