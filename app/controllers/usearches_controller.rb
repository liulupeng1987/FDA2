class UsearchesController < ApplicationController
  def index
    @usearches = Usearch.all
  end
end
