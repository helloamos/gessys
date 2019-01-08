# == Schema Information
#
# Table name: stock_movement_details
#
#  id                :integer          not null, primary key
#  product_id        :integer
#  unit_price        :float
#  quantity          :integer
#  amount            :float
#  status            :string
#  stock_movement_id :integer
#  user_id           :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class StockMovementDetail < ApplicationRecord
  belongs_to :product
  belongs_to :stock_movement
  belongs_to :user
end
