class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :unity, foreign_key: true
      t.float :unit_price
      t.references :deposit, foreign_key: true
      t.string :status
      t.references :product_category, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :reorder_threshold

      t.timestamps
    end
  end
end
