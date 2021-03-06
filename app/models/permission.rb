# == Schema Information
#
# Table name: permissions
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  status      :string
#  description :text
#  user_id     :bigint(8)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Permission < ApplicationRecord
  belongs_to :user
end
