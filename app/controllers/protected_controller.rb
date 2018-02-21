class ProtectedController < ApplicationController
	def welcome

		if !session[:authenticated]
			redirect_to '/'
			return
		end

		puts "hello"
	end
end	