class HumanResource < ApplicationRecord
	# has_many :emoloyee
	 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	 validates_presence_of :first_name
end
