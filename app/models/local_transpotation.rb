class LocalTranspotation < ActiveRecord::Base

	has_many :travel_packages
	has_many :packages
end
