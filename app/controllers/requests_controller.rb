class RequestsController < ApplicationController
  def new
    @request = Request.new
    @lawyer = Lawyer.find(params[:lawyer_id])
  end

  def create
    @request = Request.new(params_requests)
    @lawyer = Lawyer.find(params[:lawyer_id])
    @request.lawyer = @lawyer
    @request.user = current_user
    @request.save
    redirect_to requests_path
  end

  def show
    @request = Request.find(params[:id])
  end

  def index
    @requests = current_user.requests
    @user = current_user
  end


  def delete
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    # raise
    @request = Request.find(params[:id])
    @request.update(params_requests)
    redirect_to requests_path
  end

  private

  def params_requests
      params.require(:request).permit(:title, :description)
  end

end
