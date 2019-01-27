# == Schema Information
#
# Table name: movement_types
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MovementTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
