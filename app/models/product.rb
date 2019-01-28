# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  unity_id            :bigint(8)
#  unit_price          :float
#  deposit_id          :bigint(8)
#  status              :string
#  product_category_id :bigint(8)
#  user_id             :bigint(8)
#  reorder_threshold   :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :unity
  belongs_to :deposit
  belongs_to :product_category
  belongs_to :user


  # Fields validations
  validates_presence_of :name, :product_category_id, :unity_id
end
