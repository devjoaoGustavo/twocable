class MessagesController < ApplicationController
  def create
    message = Message.new(content: params[:content])
    ActionCable.server.broadcast('MessagesChannel', { message: message.content })

    head :no_content
  end
end
