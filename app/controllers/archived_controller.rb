class ArchivedController < ApplicationController
  def index
    @projects = Project.all
  end
end
