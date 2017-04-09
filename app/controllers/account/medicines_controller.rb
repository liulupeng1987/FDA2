class Account::MedicinesController < ApplicationController
  before_action :authenticate_user!
  def index
    @medicines = current_user.following_medicines
  end
end
