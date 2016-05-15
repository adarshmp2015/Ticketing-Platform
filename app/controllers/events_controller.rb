class EventsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@events = Event.all.order('created_at DESC')


	end

	 def new

	 end

	 def create
		@event = Event.new(event_params)
		@event.save
		redirect_to @event, notice: "Successfully create new event"

		
	end

	def show
		@event = Event.find(params[:id])
		$tickets = @event.total_tickets.to_i - @event.tickets.count.to_i	  
		
        $count = @event.ticket_charge.to_f-(Float(@event.ticket_charge.to_f * 5.00) / 100.00).to_f


	end

	private
	def event_params
		params.require(:event).permit(:title, :details, :conducted_on, :ticket_charge, :total_tickets, :event_sub, :no_of_days)
	end


   

end



