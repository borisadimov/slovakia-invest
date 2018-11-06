class PricesController < ApplicationController
  def index
    @services = Service.includes(:prices).all
  end
end
