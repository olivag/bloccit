class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisements.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end
end
