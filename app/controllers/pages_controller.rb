class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home = "home"
  end

  def onboarding

  end
end
