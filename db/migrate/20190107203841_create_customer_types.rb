class CreateCustomerTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_types do |t|
      t.string :name
      t.text :description
      t.string :status
      t.string :slug, unique: true

      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
