class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to 'welcome'
    else
      render :new
    end
  end

  def show
  end

  private

  def listing_params
    params.require(:listing).permit(:address, :city, :zipcode, :state, :country, :bedroom, :bathroom, :price, :square_feet)
  end
end
