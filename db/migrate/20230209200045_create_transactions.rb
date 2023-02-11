class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.string :date
      t.integer :amount
      t.string :transaction_type

      t.timestamps
    end
  end
end
