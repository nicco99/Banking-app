class User < ApplicationRecord
    has_secure_password
    validates :password, :first_name, :last_name, :email, :phone_number, :address, presence: true
    validates :email, uniqueness: { case_sensitive: false }
   
end
