class TasksController < ApplicationController
  
  before_filter :login_required

  def index
    if params[:user_id]
      @tasks = Task.where(:assignee_id => params[:user_id])
    else
      @tasks = Task.all
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to tasks_url, :notice => "Successfully created task."
    else
      render :action => 'new'
    end
  end
end
