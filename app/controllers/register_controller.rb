class RegisterController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_username(params[:username])
		if @user 
			redirect_to "/"
		else
			@user = User.create(username: params[:username], password: params[:password])
			@user.saving = Saving.create(cash: 0)
		end
	end
end