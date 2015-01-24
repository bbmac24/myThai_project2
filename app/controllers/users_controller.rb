class UsersController < ApplicationController

	def index
	end 

	def new
		@user = User.new 
	end 

	def create
		@user = User.new(params.require(:user).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation, :tagline, :photo)) 

		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to thaifoods_path
		else
	 		render :new
	 	end 
	 end 
end 