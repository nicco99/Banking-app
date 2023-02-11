class TransactionsController < ApplicationController
    def index
     transaction = Transaction.all
     render json: transaction, status: :ok
    end
    def show
        transaction = Transaction.find(params[:id])
        render json: transaction, status: :ok
    end

    def create
        transaction = Transaction.create!(transaction_params)
        render json: transaction, status: :created
    end
   
    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
        render json: { message: "transaction deleted"},  status: :ok
    end


    private 
    def transaction_params
    params.permit(:account_id, :date, :amount, :transaction_type)
    end
end
