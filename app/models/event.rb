class Event < ActiveRecord::Base
	has_many :tickets
	validates :title, presence: true, length: { minimum: 5}
	validates :details, presence: true
	validates :conducted_on, presence: true
	validates :ticket_charge, presence: true
	validates :total_tickets, presence: true
	validates :event_sub, presence: true
	validates :no_of_days, presence: true
end





