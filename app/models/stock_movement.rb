# == Schema Information
#
# Table name: stock_movements
#
#  id               :integer          not null, primary key
#  reference        :string
#  movement_type_id :integer
#  status           :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class StockMovement < ApplicationRecord
  belongs_to :movement_type
  belongs_to :user
end
