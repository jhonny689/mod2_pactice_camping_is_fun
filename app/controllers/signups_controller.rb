class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.create(params.require(:signup).permit(:time, :camper_id, :activity_id))
    if @signup.valid?
      redirect_to camper_path(@signup.camper)
    else
      flash[:errors] = @signup.errors.full_messages
      redirect_to new_signup_path
    end
  end
end
