# == Schema Information
#
# Table name: product_types
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductType < ApplicationRecord
  belongs_to :user
end
