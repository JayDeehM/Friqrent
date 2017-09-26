class CompanyController < ApplicationController
  
  def show
    @equipments = Equipment.all
    @company = Company.find(params[:id])
    @companies = Company.all
    @carts = Cart.all
    @cart = Cart.new
  end

end
