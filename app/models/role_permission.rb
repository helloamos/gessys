# == Schema Information
#
# Table name: role_permissions
#
#  id            :bigint(8)        not null, primary key
#  role_id       :bigint(8)
#  permission_id :bigint(8)
#  status        :string
#  user_id       :bigint(8)        not null
#  created_by    :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RolePermission < ApplicationRecord
  belongs_to :role
  belongs_to :permission
  belongs_to :user
end
