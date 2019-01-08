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

class Deposit < ApplicationRecord
  belongs_to :user
end
