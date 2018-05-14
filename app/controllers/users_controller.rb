class UsersController < ApplicationController
	before_action :authenticate_user!

	def new
		
	end

	def club 
		@users = User.all
	end
end
