class ProjectsController < ApplicationController
  before_action :authenticate_trustee!
  before_action :correct_trustee, only: [:edit, :update, :destroy]

  def index
    @projects = Project.all
    @steps = Step.rank(:row_order).all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @project.trustee_id = current_trustee.id # You need to add this line

  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.trustee_id = current_trustee.id # You need to add this line
    if
      @project.save
      redirect_to @project
    else
      render "new"
    end
  end

  def update
    @project = Project.find(params[:id])
    if
      @project.update(project_params)
      redirect_to @project
    else
      render "edit"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end

end
