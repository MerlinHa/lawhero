class LawyersController < ApplicationController
  def all
    @lawyers = Lawyer.all
    redirect_to lawyers_path
  end

  def index
    @lawyers = Lawyer.all
      if params.key?("law_field")

        # law_field_id = params[:law_field]
        # law_field = LawField.find(law_field_id).content

        if params[:law_field]
           law_field = params[:law_field]
        else
           law_field = "Family Law"
        end


        if params[:language]
          language = params[:language]
        else
          language = "English"
        end

        if params[:payment_type]
          payment_type = params[:payment_type]
        else
          payment_type = "Hourly"
        end

        if params[:digital_lawyer]
          digital_lawyer = params[:digital_lawyer]
        else
          digital_lawyer = true
        end

        if params[:city]
           city = params[:city]
        else
          city = "Paris"
        end


        @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).joins(:languages).joins(:payment_types).where("law_fields.content = ? AND languages.content = ? AND payment_types.content = ? AND city = ? AND digital_lawyer = ?", law_field, language, payment_type, city,digital_lawyer).uniq

      #@lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).joins(:languages).where(law_field, language).uniq
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
end
