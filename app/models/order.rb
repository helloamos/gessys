# == Schema Information
#
# Table name: orders
#
#  id          :bigint(8)        not null, primary key
#  reference   :string
#  customer_id :bigint(8)
#  status      :string
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :user
end
