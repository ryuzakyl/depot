module StoreVisits
  extend ActiveSupport::Concern

  private
  def log_store_visits
    if session[:counter].nil?
      session[:counter] = 0
    else
      current_count = session[:counter]
      session[:counter] = current_count + 1
    end

    # returning the current count
    session[:counter]
  end
end