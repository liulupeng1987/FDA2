class ManufacturersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin, only: [:new, :create, :update, :edit, :destroy]
  before_action :validate_search_key, only: [:search]
  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def index
    @manufacturers = Manufacturer.all.paginate(:page => params[:page], :per_page => 5 )
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      redirect_to manufacturers_path
    else
      render :new
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    if @manufacturer.update(manufacturer_params)
      redirect_to manufacturers_path
    else
      render :edit
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to manufacturers_path
  end

  def search
    if @query_string.present?
      @search_result = Manufacturer.ransack(@search_criteria).result(:distinct => true)
      @manufacturers = @search_result.paginate(:page => params[:page], :per_page => 5 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end


  def search_criteria(query_string)
    { :name_cont => query_string }
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :address, :description, :contact_person, :phone, :email, :website)
  end
end
