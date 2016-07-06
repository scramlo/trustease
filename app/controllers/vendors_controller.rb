class VendorsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"
  before_action :authenticate_trustee!
  
  def index
  end
end
