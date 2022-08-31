class TransactionsController < ApplicationController

  def show
    @product = Product.find(params[:product_id])
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.product = @product
    @transaction.user = current_user
    if @transaction.save!
      redirect_to product_transaction_path(@product, @transaction)
      # redirect_to product_path(@product)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:product_id, :quantity, :comment, :start_date, :end_date)
  end
end
