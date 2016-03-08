class Booking < ActiveRecord::Base

	belongs_to :flight
	has_and_belongs_to_many :passengers
	accepts_nested_attributes_for :passengers

	def self.flights
		bookings = Booking.all.includes(:flight)
		bookings.collect { |booking| booking.flight }
	end
	
end
