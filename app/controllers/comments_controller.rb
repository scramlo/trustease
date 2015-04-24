class CommentsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"

  before_action :authenticate_trustee!

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(comment_params)
    @comment.trustee_id = @project.trustee.id
    @comment.save
    redirect_to project_path(@project)
  end

  def edit
    @project = Project.find(params[:project_id])
  end

  def update
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.update(comment_params)
  end

  def update_row_order
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.row_order_position = thing_params[:row_order_position]
    @comment.save

  render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  def destroy
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end

  private
    def comment_params
      params.require(:comment).permit(:message, :trustee_id, :project_id)
    end

end
