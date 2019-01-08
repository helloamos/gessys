class CreatePurchaseOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_order_details do |t|
      t.references :product, foreign_key: true
      t.float :unit_price
      t.integer :quantity
      t.float :amount
      t.string :status
      t.references :purchase_order, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
