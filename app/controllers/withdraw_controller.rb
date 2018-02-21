class WithdrawController < ApplicationController
	def new
		@user = User.find_by_id(session[:user_id])
	end

	def amount
 		@user = User.find_by_id(session[:user_id])
  		@user.saving.cash = @user.saving.cash - params[:amount].to_i
  		if
  		params[:amount].to_i < 0
  		redirect_to '/protected'
		return 
	else
		@user.saving.save
		redirect_to '/withdraw'

		end
	end
end