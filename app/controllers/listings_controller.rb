class ListingsController < ApplicationController
  
  def index
    @listing = Listing.all 
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was succesfully created.'}
      else
        format.html { render :new }
      end
    end
  end

  def destroy 
    @listing.destroy
    respond_to do |format|
      format.html {redirect_to listing_url, notice: 'Listing was successfully destroyed.'}
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:address, :city, :zipcode, :state, :country, :bedroom, :bathroom, :price, :square_feet)
  end

end
