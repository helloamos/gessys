# == Schema Information
#
# Table name: product_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  status     :string
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductType < ApplicationRecord
  belongs_to :user
end
