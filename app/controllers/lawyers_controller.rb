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
    @lawyer = Lawyer.new(params[:lawyer])
    @lawyer.save
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:photo, :short_desc, :long_desc, :email, :phone, :address, :price_cents, :sku)
  end
end
