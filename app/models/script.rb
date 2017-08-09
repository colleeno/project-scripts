class Script < ApplicationRecord
  belongs_to :category
  validates :quote, presence: true
  validates :character, presence: true
  validates :show, presence: true
  belongs_to :user
  has_many :stars, dependent: :destroy
  has_many :users, through: :stars
end
