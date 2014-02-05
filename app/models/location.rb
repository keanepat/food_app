class Location < ActiveRecord::Base
	#attributes locations
	#attr_accessor :address, :latitude, :longitude

	#tell geocode to use 
	geocoded_by :address

	#use attribute for after valid
	after_validation :geocode, :if => :address_changed?
end
