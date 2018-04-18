class WithdrawController < ApplicationController
	def new
		@user = User.find_by_id(session[:user_id])
		@error = params[:error]

		
	end

	def amount
		@user = User.find_by_id(session[:user_id])
  		if @user.saving.cash < params[:amount].to_i
  			redirect_to '/withdraw?error=1'
  		elsif params[:amount].to_i < 0
  			redirect_to '/withdraw?error=2' 
		else
			@user.saving.cash = @user.saving.cash - params[:amount].to_i
			@user.saving.save
			@timetable = Timetable.new(user_id: @user.id, ammount: params[:amount], date: Time.now )
			@timetable.save
			redirect_to '/withdraw'
		end
	end
end