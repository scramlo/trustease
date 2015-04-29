class HomeController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"
  def index
    @projects = Project.all.where(archived: true)
  end
end
