# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  full_name        :string
#  address          :string
#  city             :string
#  country          :string
#  phone            :string
#  slug             :string
#  status           :string           default("Enabled")
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  customer_type_id :integer
#  email            :string
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
