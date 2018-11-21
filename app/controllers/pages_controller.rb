class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home = "home"
    @lawyers = Lawyer.all
    if params.key?("law_field")

    law_field = params[:law_field]
    l

    city = params[:city]

    # digital_lawyer = params[:digital_lawyer]


    @lawyers = Lawyer.joins(:lawyer_properties).joins(:law_fields).where("law_fields.content = ? AND city = ?", law_field, city).uniq
    end
  end

  def onboarding
  end

end
