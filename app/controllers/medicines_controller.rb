class MedicinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :search]
  before_action :require_is_admin, only: [:new, :create, :update, :edit, :destroy]
  before_action :validate_search_key, only: [:search]

  def show
    @medicine = Medicine.find(params[:id])
  end

  def index
    if params[:manufacturer].blank?
      @medicines = Medicine.all.paginate(:page => params[:page], :per_page => 5)
    else
      @manufacturer_id = Manufacturer.find_by(name: params[:manufacturer]).id
      @medicines = Medicine.where(:manufacturer_id => @manufacturer_id).paginate(:page => params[:page], :per_page => 5)
    end
  end

  def new
    @medicine = Medicine.new
    @manufacturers = Manufacturer.all.map { |m| [m.name, m.id] }
  end

  def create
    @medicine = Medicine.new(medicine_params)
    @medicine.manufacturer_id = params[:manufacturer_id]
    if @medicine.save
      redirect_to medicines_path
    else
      render :new
    end
  end

  def edit
    @medicine = Medicine.find(params[:id])
    @manufacturers = Manufacturer.all.map { |m| [m.name, m.id] }
  end

  def update
    @medicine = Medicine.find(params[:id])
    @medicine.manufacturer_id = params[:manufacturer_id]
    if @medicine.update(medicine_params)
      redirect_to medicines_path
    else
      render :edit
    end
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @medicine.destroy
    redirect_to medicines_path
  end

  def search
    if @query_string.present?
      usearch = Usearch.new
      usearch.uquery = @query_string
      usearch.user_id = current_user.id
      usearch.user_email = current_user.email
      usearch.save
      @search_result = Medicine.ransack(@search_criteria).result(:distinct => true)
      @medicines = @search_result.order(price: :desc).paginate(:page => params[:page], :per_page => 5 )
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

  def medicine_params
    params.require(:medicine).permit(:name, :strength, :dosage_form, :approval_number, :approval_date, :category, :manufacturer, :manufacturer_id, :price)
  end

end
