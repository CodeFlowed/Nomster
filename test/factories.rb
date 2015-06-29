FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"doh#{n}@gmail.com"
		end
		password "123123123"
		password_confirmation "123123123"
	end

	factory :place do
		name "Homer's Hamburgers"
		address "Springfield, IL"
		description "Best Burgers EVER!"
		association :user
	end

	# factory :comment do
	# 	message "Yay"
	# 	rating "5_stars"
	# 	association :user, :factory => :place
	# end
end