class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account_holder
      t.string :description
      t.decimal :balance

      t.timestamps
    end
  end
end
