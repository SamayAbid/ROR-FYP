class HomeController < ApplicationController

	before_action :get_actvities, only: [:dashboard]

	def index

	end	

	def header
	end
	
	def about
	end

	def confirmation
	end

	def dashboard
		
	end	

	def pricing
	end

	private
		def get_actvities
			@activities = Activity.all
		end
		
		def get_member_activities
		end	
		
end	