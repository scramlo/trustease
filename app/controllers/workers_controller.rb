class WorkersController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @worker = @project.workers.create(worker_params)
    redirect_to project_path(@project)
end

private
  def worker_params
    params.require(:worker).permit(:name, :number, :email)
  end

end
