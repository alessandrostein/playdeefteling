class TasksController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :load_model, only: [:index, :show, :edit, :update, :destroy]

  def index
    @tasks = current_user.activities
  end

  protected

  def load_model
    @task = current_user.tasks.find(params[:activity_id])
  end
end
