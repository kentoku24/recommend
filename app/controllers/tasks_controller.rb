class TasksController < ApplicationController
 before_filter :authenticate_user!
 
 def index  
    @task = Task.new  
    @tasks = current_user.tasks.undone  
  end  
  
  def done  
    @task = Task.new  
    @tasks = current_user.tasks.done  
    render :action => 'index'  
  end  
  
  def create  
    @task = Task.new(params[:task])  
    @task.done = false
    @task.user_id = current_user.id
    if @task.save 
      redirect_to :tasks 
    else
      @tasks = current_user.tasks.undone
      render :action => 'index'
    end
  end  
  
  def finish  
    @task = Task.find(params[:id])  
    @task.update_attribute(:done, true)  
    redirect_to :back  
  end
  
  def unfinish  
    @task = Task.find(params[:id])  
    @task.update_attribute(:done, false)  
    redirect_to :back  
  end  

  
end
