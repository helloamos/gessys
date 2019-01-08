class CreateProductTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_types do |t|
      t.string :name
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
