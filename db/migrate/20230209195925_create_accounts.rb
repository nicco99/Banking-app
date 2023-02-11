class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :account_type
      t.integer :amount

      t.timestamps
    end
  end
end
