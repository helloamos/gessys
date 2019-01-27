# == Schema Information
#
# Table name: order_details
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  unit_price :float
#  quantity   :integer
#  amount     :float
#  status     :string
#  order_id   :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
