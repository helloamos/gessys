# == Schema Information
#
# Table name: user_roles
#
#  id         :integer          not null, primary key
#  role_id    :integer
#  user_id    :integer
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
