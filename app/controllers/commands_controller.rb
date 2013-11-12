class CommandsController < ApplicationController
	
	def create
		error = false
		cmd = "echo 'error'"
		if params.include?(:command)
			case params[:command]
			when "up"
				p "GOING FORWARD"
				cmd = "echo 'forward' >> test.txt"
			when "down"
				p "GOING BACKWARD"
				cmd = "echo 'backward' >> test.txt"
			when "left"
				p "TURNING LEFT"
				cmd = "echo 'left' >> test.txt"
			when "right"
				p "TURNING RIGHT"
				cmd = "echo 'right' >> test.txt"
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
			value = `#{cmd}`
			render :json => "OK"
		end
	end

end
