class User < ActiveRecord::Base
	has_many :memberships
	has_many :organizations, :through => :memberships

	# When a user creates an account
	after_create :create_organization

	def create_organization
		# A New organization should be created with the
		# same name and be flagged as a single-person
		# organization
		Organization.create( :is_single_person => true, :name => self.name )
	end
end
