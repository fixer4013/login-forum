class RegisterController < ApplicationController
	def new
	end

	def create
		User.create(username: params[:username], password: params[:password])
	end
end