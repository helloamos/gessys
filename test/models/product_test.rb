# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  unity_id            :integer
#  unit_price          :float
#  deposit_id          :integer
#  status              :string
#  product_category_id :integer
#  user_id             :integer
#  reorder_threshold   :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
