class TicketsController < ApplicationController

	def create
		@event = Event.find(params[:event_id])
		@q = @event
		@ticket = @event.tickets.create(params[:ticket].permit(:participant, :gender, :user, :fee))		
        @event.save   

		redirect_to event_path(@event)
	end
	def destroy
		@event = Event.find(params[:event_id])
		@ticket = @event.tickets.find(params[:id])
		@ticket.destroy

		redirect_to event_path(@event)
	end
end
