class SessionsController < ApplicationController
	
	def new

	end	


	def create
		@user = User.find_by_username(params[:username])

		if @user && @user.authenticate(params[:password])
			session[:authenticated] = true
			session[:user_id] = @user.id 
			redirect_to "/protected"
			return 
		else
			redirect_to "/" ;  display = "Wrong user or password"
		end
	end

	def destroy
		session[:authenticated] = false
		redirect_to '/'
	end
end