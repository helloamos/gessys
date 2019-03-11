class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :slug, unique: true
      t.string :status, default: "enable"
      t.references :customer_type#, foreign_key: true
      t.string :email
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
