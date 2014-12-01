class UsersController < ApplicationController

	def new
	end


	def create
		#create a new user and pass the input stuff
  		@user = User.new(user_params)
  		#save the user record in the database
  		@user.save
  		redirect_to @user
	end

	def show
		#find the user by id
		@user = User.find(params[:id])
	end

	private
	#prevents attackers from getting this sensitive info
		def user_params
			params.require(:user).permit(:email, :password)
		end
		#gives our app permisson to access both email and password

	def index
		@users = User.all
	end


end
