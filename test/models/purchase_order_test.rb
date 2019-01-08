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

require 'test_helper'

class PurchaseOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
