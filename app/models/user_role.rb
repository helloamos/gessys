# == Schema Information
#
# Table name: user_roles
#
#  id         :integer          not null, primary key
#  role_id    :integer
#  user_id    :integer
#  created_by :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserRole < ApplicationRecord
  belongs_to :role
  belongs_to :user
end
