# == Schema Information
#
# Table name: deposits
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  description :text
#  status      :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
