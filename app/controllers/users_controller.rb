class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
skip_before_action :authorize, only:[:create]
def index
user = User.all
render json: user, status: :ok
end

def create
    user = User.create!(user_params)
    render json: user, status: :created
end

def show
user = User.find(params[:id])
render json: user, status: :ok
end

def update
user = User.find(params[:id])
user.update(user_params)
render json: user, status: :ok
end

def destroy
user = User.find(params[:id])
user.destroy
render json: { message: "User has been deleted." }, status: :ok
end

private

def user_params
params.permit(:password, :first_name, :last_name, :email, :phone_number, :address)
end

def render_not_found
    render json: { errors: 'The record could not be found' }, status: :not_found
end

def render_unprocessable_entity invalid
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
end
end
