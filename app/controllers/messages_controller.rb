class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @case = Case.find(params[:case_id])
    @message.case = @case
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.js
        format.html {redirect_to case_path(@case)}
      end
    else
      respond_to do |format|
        format.js
        format.html {render "case/show"}
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
