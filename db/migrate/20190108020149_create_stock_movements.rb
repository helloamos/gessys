class CreateStockMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_movements do |t|
      t.string :reference
      t.references :movement_type, foreign_key: true
      t.references :product_category, foreign_key: true
      t.references :product, foreign_key: true
      t.references :deposit, foreign_key: true
      t.references :unity, foreign_key: true
      t.bigint :quantity, default: 0
      t.text :observations
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
