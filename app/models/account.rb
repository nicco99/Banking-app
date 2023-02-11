class Account < ApplicationRecord
validates :user_id, :amount, :account_type , presence: true
    validates :amount, presence: true
end
