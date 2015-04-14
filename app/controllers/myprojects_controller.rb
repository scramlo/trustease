class MyprojectsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"

  def index
  end
end
