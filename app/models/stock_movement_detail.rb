# == Schema Information
#
# Table name: stock_movement_details
#
#  id                :bigint(8)        not null, primary key
#  product_id        :bigint(8)
#  unit_price        :float
#  quantity          :integer
#  amount            :float
#  status            :string
#  stock_movement_id :bigint(8)
#  user_id           :bigint(8)        not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class StockMovementDetail < ApplicationRecord
  belongs_to :product
  belongs_to :stock_movement
  belongs_to :user
end
