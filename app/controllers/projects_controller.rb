class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"
  before_action :authenticate_trustee!

  def index
    @projects = Project.all
    @steps = Step.rank(:row_order).all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @project.trustee_id = current_trustee.id

  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.trustee_id = current_trustee.id
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
    params.require(:project).permit(:title, :description, :budgeted)
  end

end
