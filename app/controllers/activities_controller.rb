class ActivitiesController < ApplicationController
  before_action :get_trainer_instance
  before_action :set_activity_trainer ,only: [:create] 
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end  

  def create
    @activity = Activity.new(activity_params)
      @activity.trainer = @trainer
      if @activity.save
        redirect_to @activity
      else
        render :new
      end
  end        

  def show
    @activity = Activity.find(params[:id])
  end

  private
    def activity_params
      params.require(:activity).permit(:name , :description)
    end

    def get_trainer_instance
      @trainers = Trainer.all
    end

    def set_activity_trainer
      @trainer = Trainer.find(params[:activity][:trainer_id])
    end      

end
