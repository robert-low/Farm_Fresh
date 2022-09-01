class UsersController < ApplicationController

  def show
    @user = current_user
    @transactions = Transaction.where(user_id: params[:id])
  end
end


