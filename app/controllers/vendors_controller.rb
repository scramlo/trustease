class VendorsController < ApplicationController
  http_basic_authenticate_with name: "swc", password: "SpoWes1100"
  before_action :authenticate_trustee!

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendors = Vendor.all
    @vendor = Vendor.new
  end

  def edit
    @vendors = Vendor.all
    @vendor = Vendor.find(params[:id])
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if
      @vendor.save
      redirect_to vendors_path
    else
      render "new"
    end
  end

  def update
    @vendor = Vendor.find(params[:id])
    if
      @vendor.update(vendor_params)
      redirect_to vendors_path
    else
      render "edit"
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to vendors_path
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name, :info)
  end

end
