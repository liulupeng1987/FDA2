class Account::ManufacturersController < ApplicationController
  before_action :authenticate_user!

  def index
    @manufacturers = current_user.favorite_manufacturers
  end
end
