class CreateStockMovementDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_movement_details do |t|
      t.references :product, foreign_key: true
      t.float :unit_price
      t.integer :quantity
      t.float :amount
      t.string :status
      t.references :stock_movement, foreign_key: true
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
