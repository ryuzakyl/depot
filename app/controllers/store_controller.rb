class StoreController < ApplicationController
  skip_before_action :authorize

  include StoreVisits

  include CurrentCart
  before_action :set_cart

  def index
    # logging store visits
    @store_visits = log_store_visits()

    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      # getting all the stored products
      @products = Product.order(:title)
    end

    # getting the current time
    @current_time = Time.now()
  end
end
