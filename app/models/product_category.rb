# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductCategory < ApplicationRecord
  belongs_to :user
  
  # Fields validations.
  validates_presence_of :name
end
