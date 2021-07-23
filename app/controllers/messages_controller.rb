class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    ActionCable.server.broadcast 'message_channel', content: @message, username: @message.user.nickname if @message.save
  end

  private

  def message_params
    params.require(:message).permit(:message).merge(user_id: current_user.id, coat_id: params[:coat_id])
  end
end
