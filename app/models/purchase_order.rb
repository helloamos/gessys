# == Schema Information
#
# Table name: purchase_orders
#
#  id          :integer          not null, primary key
#  reference   :string
#  provider_id :integer
#  status      :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PurchaseOrder < ApplicationRecord
  belongs_to :provider
  belongs_to :user
end
