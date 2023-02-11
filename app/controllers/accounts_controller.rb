class AccountsController < ApplicationController

def index 
  accounts = Account.all
  render json: accounts, status: :created
end

def show
account  = Account.find(params[:id])
render json: account, status: :ok
end

def create
account = Account.create!(account_params)
render json: account, status: :created
end

def update
account = Account.find(params[:id])
account.update(account_params)
render json: account, status: :ok
end

def destroy
account = Account.find(params[:id])
account.destroy
render json: { message: "Account has been deleted." }, status: :ok
end

private
def account_params
params.permit(:user_id, :amount, :account_type)
end

end
