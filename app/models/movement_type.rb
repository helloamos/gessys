# == Schema Information
#
# Table name: movement_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MovementType < ApplicationRecord
  belongs_to :user
end
