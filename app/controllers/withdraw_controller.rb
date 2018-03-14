class WithdrawController < ApplicationController
	def new
		@user = User.find_by_id(session[:user_id])
	end

	def amount
  		if @user.saving.cash < params[:amount].to_i
  			redirect_to '/protected'
  		elsif params[:amount].to_i < 0
  			redirect_to '/protected' 
		else
			@user.saving.save
			redirect_to '/withdraw'
		end
		@user = User.find_by_id(session[:user_id])
  		@user.saving.cash = @user.saving.cash - params[:amount].to_i
  		@user.timetable.save	
	end
end