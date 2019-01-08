class CreateStockMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_movements do |t|
      t.string :reference
      t.references :movement_type, foreign_key: true
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
