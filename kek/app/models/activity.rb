class Activity < ActiveRecord::Base
	has_many :invitations, dependent: :destroy
end
