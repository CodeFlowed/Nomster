require 'test_helper'

class PlaceTest < ActiveSupport::TestCase

  test "should not save a place with a name that's less than 3 characters long" do
  	place = FactoryGirl.build(:place, :name => 'Ed')
  	assert_not place.valid?
  end

  test "should convert an address and save it as geocode latitude and longitude values" do
  	place = FactoryGirl.create(:place, :address => '725 Kinau St, Honolulu, HI 96813')
  	assert place.latitude.is_a?(Numeric) && place.longitude.is_a?(Numeric), "Yikes! No latitude and longitude geocodes were stored in the database."
  end
end
