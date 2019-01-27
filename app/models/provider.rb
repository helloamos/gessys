# == Schema Information
#
# Table name: providers
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  address    :string
#  city       :string
#  country    :string
#  phone      :string
#  email      :string
#  status     :string
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ApplicationRecord
  belongs_to :user

  # Fields validation.
  validates_presence_of :name,  :city
end
