class CreateAlterCustomers < ActiveRecord::Migration[5.1]
  def change
    change_table :customers do |t|
      t.references :customer_type, foreign_key: true
      t.string :email

    end
  end
end
