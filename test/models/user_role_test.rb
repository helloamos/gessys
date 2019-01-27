# == Schema Information
#
# Table name: user_roles
#
#  id         :bigint(8)        not null, primary key
#  role_id    :bigint(8)
#  user_id    :bigint(8)
#  created_by :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
