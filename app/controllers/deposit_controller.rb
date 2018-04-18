class DepositController < ApplicationController
	def new
		@user = User.find_by_id(session[:user_id])
	end

	def amount
		@user = User.find_by_id(session[:user_id])
  			if params[:amount].to_i < 0
  				redirect_to '/protected'
  			elsif 
  				params[:amount].to_i > 1000
  				redirect_to '/protected'
  			else		
			@user.saving.cash = @user.saving.cash + params[:amount].to_i
  			@user.saving.save
  			redirect_to '/deposit'	
  		end	
	end
end