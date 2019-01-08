# == Schema Information
#
# Table name: customer_types
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  status      :string
#  slug        :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CustomerType < ApplicationRecord
  belongs_to :user
end
