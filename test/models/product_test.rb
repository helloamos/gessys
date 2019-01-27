# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  name                :string
#  unity_id            :bigint(8)
#  unit_price          :float
#  deposit_id          :bigint(8)
#  status              :string
#  product_category_id :bigint(8)
#  user_id             :bigint(8)
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
