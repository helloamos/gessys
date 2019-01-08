# == Schema Information
#
# Table name: stock_movements
#
#  id               :integer          not null, primary key
#  reference        :string
#  movement_type_id :integer
#  status           :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class StockMovementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
