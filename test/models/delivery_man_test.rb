# == Schema Information
#
# Table name: delivery_men
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  address    :string
#  city       :string
#  country    :string
#  phone      :string
#  email      :string
#  status     :string
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DeliveryManTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
