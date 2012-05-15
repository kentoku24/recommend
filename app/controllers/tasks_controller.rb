class TasksController < ApplicationController
 def index  
    @task = Task.new  
    @tasks = Task.undone  
  end  
  
  def done  
    @task = Task.new  
    @tasks = Task.done  
    render :action => 'index'  
  end  
  
  def create  
    @task = Task.new(params[:task])  
    @task.done = false
    @task.save  
    redirect_to :tasks  
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
