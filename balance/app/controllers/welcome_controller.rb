class WelcomeController < ApplicationController
  def index
    @price = Balance.count_price
  end
end
