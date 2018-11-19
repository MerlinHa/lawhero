class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
      if params.key?("law_field")
        law_field = params[:law_field]
        language = params[:language]
        @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).joins(:languages).where("law_fields.content = ? AND languages.content = ?", law_field, language).uniq
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

  private

  def lawyer_params
    params.require(:lawyer).permit(:address, :phone, :short_desc, :long_desc, :language_ids => [], :communication_ids => [], :law_field_ids => [], :payment_type_ids => [],:photo :email, :price_cents, :sku)
  end
end
