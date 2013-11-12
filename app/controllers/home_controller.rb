class HomeController < ApplicationController
	def index
		@command = Command.new
	end
end
