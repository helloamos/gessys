# == Schema Information
#
# Table name: purchase_order_details
#
#  id                :integer          not null, primary key
#  product_id        :integer
#  unit_price        :float
#  quantity          :integer
#  amount            :float
#  status            :string
#  purchase_order_id :integer
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class PurchaseOrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :purchase_order
  belongs_to :user
end
