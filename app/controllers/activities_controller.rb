class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end
  def new
    @activity = Activity.new
  end
  def create
    @activity = Activity.create(params.require(:activity).permit(:name, :age))
    if @activity.valid?
      redirect_to activity_path(@activity)
    else
      flash[:errors] = @activity.errors.full_messages
      redirect_to new_activity_path
    end
  end
  def show
    @activity = Activity.find(params[:id])
  end
end
