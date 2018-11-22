class LawyersController < ApplicationController
  def all
    @lawyers = Lawyer.all
    redirect_to lawyers_path
  end

  def index
    @queries = params[:query] ? params[:query] : {}
    if params[:query]
      @lawyers = FilterLawyers.new(Lawyer.includes(:lawyer_properties), search_params).search
    else
      @lawyers = Lawyer.all
    end
  end

  def show
    @lawyer = Lawyer.find(params[:id])
  end

  def new
    @lawyer = Lawyer.new
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)

    @lawyer.user = current_user
    if @lawyer.save
      redirect_to lawyer_path(@lawyer)
    else
      render :new
    end
  end

  def edit
    @lawyer = Lawyer.find(params[:id])
  end

  def update
    @user = current_user
    @lawyer = Lawyer.find(params[:id])
    @lawyer.update(lawyer_params)
    if @lawyer.save
      redirect_to lawyer_path(@lawyer)
    else
      render
    end
  end


  private

  def lawyer_params
    params.require(:lawyer).permit(:address, :phone, :short_desc, :long_desc, :sku, :photo, :price_cents, :language_ids => [], :communication_ids => [], :law_field_ids => [], :payment_type_ids => [])
  end

  def search_params
    params.require(:query).permit(:law_field, :language, :payment_type, :city, :digital_lawyer)
  end
end
