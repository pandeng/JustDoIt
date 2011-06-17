class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(params[:activity])
    if @activity.save
      redirect_to activities_url, :notice => "Successfully created activity."
    else
      render :action => 'new'
    end
  end
end
