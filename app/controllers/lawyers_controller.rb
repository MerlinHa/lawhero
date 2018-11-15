class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
  end
end
