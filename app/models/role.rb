class Role < ActiveRecord::Base
	has_many :memberships
end
