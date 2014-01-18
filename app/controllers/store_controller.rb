class StoreController < ApplicationController
  include StoreVisits

  include CurrentCart
  before_action :set_cart

  def index
    # logging store visits
    @store_visits = log_store_visits()

    # getting all the stored products
    @products = Product.order(:title)

    # getting the current time
    @current_time = Time.now()
  end
end
