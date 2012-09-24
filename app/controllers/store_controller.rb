class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
  	# @products = Product.find(:all)
  	@products = Product.order(:title)
    @cart = current_cart

    @session_counter = session[:counter]
    if @session_counter.nil?
      @session_counter = 1
    else
      @session_counter += 1
    end
    session[:counter] = @session_counter

	if @session_counter > 5
    	@counter_message = "You've accessed this index page #{@session_counter} times"
    end

  end
end
