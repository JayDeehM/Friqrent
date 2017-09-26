class PagesController < ApplicationController
  def cart
    @equipment = Equipment.all
  end
end
