# == Schema Information
#
# Table name: stock_movements
#
#  id               :bigint(8)        not null, primary key
#  reference        :string
#  movement_type_id :bigint(8)
#  status           :string
#  user_id          :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class StockMovement < ApplicationRecord
  belongs_to :movement_type
  belongs_to :user
  has_many :stock_movement_details, dependent: :destroy
  accepts_nested_attributes_for :stock_movement_details
end
