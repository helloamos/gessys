# == Schema Information
#
# Table name: purchase_order_details
#
#  id                :bigint(8)        not null, primary key
#  product_id        :bigint(8)
#  unit_price        :float
#  quantity          :integer
#  amount            :float
#  status            :string
#  purchase_order_id :bigint(8)
#  user_id           :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class PurchaseOrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :purchase_order
  belongs_to :user
end
