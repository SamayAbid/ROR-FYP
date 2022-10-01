class MemberActivitiesController < ApplicationController
	
  before_action :get_members_instance
  before_action :get_trainer_activities
  #before_action :get_activity_name

  def new
		@member_activity = MemberActivity.new
	end
	
	def create
		@member_activity = MemberActivity.new(member_activity_params)
		if @member_activity.save
			redirect_to @member_activity
		else
			render :new
		end		
	end

	def show
		@member_activity = MemberActivity.find(params[:id])
	end

	private
		def member_activity_params
			params.require(:member_activity).permit()
		end

		def get_trainer_activities
			@trainer_activities = TrainerActivity.all
		end
    
    def get_members_instance
      @members = Member.all
    end
    
    # def get_activity_name(id)
    #   @trainer_activity = TrainerActivity.find(params[:id])
    #   name = @trainer_activity.activity.name 
    # end  

end	