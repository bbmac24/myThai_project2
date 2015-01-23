class SessionsController < ApplicationController
	
	def new
	end 

	def create
		u = User.find_by(email: params[:user][:email])

		if u && u.authenticate(params[:user][:password])
			session[:user_id] = u.id.to_s
			redirect_to thaifoods_path
		else 
			render :new
		end 

	end

	def destroy
		session[:user_id] = nil 
		redirect_to root_path
	end  

end 
