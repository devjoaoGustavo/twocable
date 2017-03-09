module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def connect
      Rails.logger.info "Mais uma conexão: total de #{ActionCable.server.connections.size + 1}"
    end

    def disconnect
      Rails.logger.info "Menos uma conexão: total de #{ActionCable.server.connections.size}"
    end
  end
end
