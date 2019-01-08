class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :email
      t.string :website
      t.string :slug, unique: true
      t.references :user, foreign_key: true, null: false, index:  true

      t.timestamps
    end
  end
end
