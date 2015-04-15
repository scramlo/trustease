class MyprojectsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"
  before_action :authenticate_trustee!

  def index
    @myprojects = current_trustee.projects.all
    @trustee = current_trustee.firstname
  end
end
