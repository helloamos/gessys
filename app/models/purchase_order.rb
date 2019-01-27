# == Schema Information
#
# Table name: purchase_orders
#
#  id          :bigint(8)        not null, primary key
#  reference   :string
#  provider_id :bigint(8)
#  status      :string
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PurchaseOrder < ApplicationRecord
  belongs_to :provider
  belongs_to :user
end
