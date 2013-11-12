class CommandsController < ApplicationController
	
	def create
		error = false
		if params.include?(:command)
			case params[:command]
			when "up"
				p "GOING FORWARD"
			when "down"
				p "GOING BACKWARD"
			when "left"
				p "TURNING LEFT"
			when "right"
				p "TURNING RIGHT"
			else
				p "ERROR"
				error = true
			end
		else 
			error = true
		end
		if error
			render :json => "KO"
		else
			render :json => "OK"
		end
	end

end
