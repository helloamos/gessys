# == Schema Information
#
# Table name: stock_movements
#
#  id               :bigint(8)        not null, primary key
#  reference        :string
#  movement_type_id :bigint(8)
#  status           :string
#  user_id          :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class StockMovementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
