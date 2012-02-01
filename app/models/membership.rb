class Membership < ActiveRecord::Base
	belongs_to :users
	belongs_to :organizations
	belongs_to :roles
end
