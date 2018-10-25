class ServicesController < ApplicationController
  def show
    @service = Service.friendly.find(params[:id])
  end
end
