class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :unity, foreign_key: true
      t.string :bar_code
      t.string :serial_number
      t.float :unit_price, default: 0.0
      t.references :provider, foreign_key: true
      t.references :deposit, foreign_key: true
      t.string :status, default: 'enable'
      t.references :product_category, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :reorder_threshold
      t.bigint :current_stock

      t.timestamps
    end
  end
end
