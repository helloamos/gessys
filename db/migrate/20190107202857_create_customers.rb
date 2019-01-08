class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :slug, unique: true
      t.string :status, default: "Enabled"
      #t.references :customer_type, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
