class UsersChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'UsersChannel'
  end
end
