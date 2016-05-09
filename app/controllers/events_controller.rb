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
	end

	private
	def event_params
		params.require(:event).permit(:title, :details)
	end
end
