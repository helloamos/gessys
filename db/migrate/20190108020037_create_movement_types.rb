class CreateMovementTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :movement_types do |t|
      t.string :name
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
