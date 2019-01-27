# == Schema Information
#
# Table name: user_roles
#
#  id         :bigint(8)        not null, primary key
#  role_id    :bigint(8)
#  user_id    :bigint(8)
#  created_by :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserRole < ApplicationRecord
  belongs_to :role
  belongs_to :user
end
