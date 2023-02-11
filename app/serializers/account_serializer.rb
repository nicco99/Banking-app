class AccountSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :account_type, :amount
end
