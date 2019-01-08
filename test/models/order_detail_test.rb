# == Schema Information
#
# Table name: order_details
#
#  id         :integer          not null, primary key
#  product_id :integer
#  unit_price :float
#  quantity   :integer
#  amount     :float
#  status     :string
#  order_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
