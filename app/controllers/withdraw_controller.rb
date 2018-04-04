class WithdrawController < ApplicationController
	def new
		@user = User.find_by_id(session[:user_id])
	end

	def amount
		@user = User.find_by_id(session[:user_id])
  		if @user.saving.cash < params[:amount].to_i
  			redirect_to '/protected'
  		elsif params[:amount].to_i < 0
  			redirect_to '/protected' 
		else
			@user.saving.cash = @user.saving.cash - params[:amount].to_i
			@user.saving.save
			@timetable = Timetable.new(user_id: @user.id, ammount: params[:amount])
			@timetable.save
			redirect_to '/withdraw'
		end
	end
end