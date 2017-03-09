class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'MessagesChannel'
  end

  def receive(data)
    ActionCable.server.broadcast('MessagesChannel', data)
    Rails.logger.info "Recebi esta mensagem do cliente: #{data['message']}"
  end
end
