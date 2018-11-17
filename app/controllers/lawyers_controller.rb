class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
    ### make it work for not one filter, but more than one
  end

  def show
    @lawyer = Lawyer.find(params[:id])
  end
end
