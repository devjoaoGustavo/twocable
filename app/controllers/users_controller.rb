class UsersController < ApplicationController
  def create
    user = User.create!(username: params[:username])
    ActionCable.server.broadcast('UsersChannel', { username: user.username })
    ActionCable.server.broadcast('MessagesChannel', { message: "Bem vindo #{user.username}" })

    head :no_content
  end
end
