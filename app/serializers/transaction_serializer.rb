class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :date, :amount, :transaction_type
end
