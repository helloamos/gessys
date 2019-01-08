class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :status
      t.text :description
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
