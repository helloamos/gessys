# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :customers, dependent: :destroy
  has_many :providers, dependent: :destroy
  has_many :unities, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :product_categories, dependent: :destroy
  has_many :deposits, dependent: :destroy
  has_many :stock_movements, dependent: :destroy
  
end
