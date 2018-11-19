class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
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

  private

  def lawyer_params
    params.require(:lawyer).permit(:address, :phone, :short_desc, :long_desc, :language_ids => [], :communication_ids => [], :law_field_ids => [], :payment_type_ids => [],)
  end


end
