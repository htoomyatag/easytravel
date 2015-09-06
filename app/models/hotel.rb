class Hotel < ActiveRecord::Base

	has_many :travel_packages
	has_many :packages
	belongs_to :destination
end
