class CreateDeliveryMen < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_men do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :email
      t.string :status
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
