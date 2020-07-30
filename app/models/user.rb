class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shots, dependent: :destroy
  has_many :comments, dependent: :destroy
  acts_as_voter
end
