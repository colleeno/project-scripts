class Script < ApplicationRecord
  belongs_to :category
  validates :quote, presence: true
  validates :character, presence: true
  validates :show, presence: true
end
