class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
  end

  def show
    @lawyer = Lawyer.find(params[:id])
    @languages = @lawyer.languages
  end
end
