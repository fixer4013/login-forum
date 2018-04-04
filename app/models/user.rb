class User < ActiveRecord::Base
	validates :username, presence: true

	has_one :saving
	has_many :timetables

	def authenticate(pass)
		 if password == pass
		 	return true
		 else
		 	return false
		end
	end
end