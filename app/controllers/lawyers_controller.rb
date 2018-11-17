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
    @lawyer = Lawyer.new(params[:lawyer])
    @lawyer.save
  end

end
