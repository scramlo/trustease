class StepsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @step = @project.steps.create(step_params)
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:project_id])
  end

  def update
    @project = Project.find(params[:project_id])
    @step = @project.steps.find(params[:id])
    @step.update(step_params)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @step = @project.steps.find(params[:id])
    @step.destroy
    redirect_to project_path(@project)
  end

  private
    def step_params
      params.require(:step).permit(:name)
    end

end
