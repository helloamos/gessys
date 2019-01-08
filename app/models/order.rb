# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  reference   :string
#  customer_id :integer
#  status      :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :user
end
