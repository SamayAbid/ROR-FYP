class TrainerActivities < ApplicationController

  before_action :get_trainer_instance , only: [:create]

	def index
    @trainer_activities = TrainerActivity.all
  end

  def new
    @trainer_activity = TrainerActivity.new
  end  

  def create
    @trainer_activity = TrainerActivity.new(trainer_activity_params)
      #@trainer_activity.trainer = @trainer
      if @trainer_activity.save
        redirect_to @trainer_activity
      else
        render :new
      end
  end        

  def show
    @trainer_activity = TrainerActivity.find(params[:id])
  end

  private
    def trainer_activity_params
      params.require(:trainer_activity).permit(:name , :description)
    end

    def get_trainer_instance
      @trainers  = Trainer.all
    end

end	