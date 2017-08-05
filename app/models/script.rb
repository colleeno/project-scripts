class Script < ApplicationRecord
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
end
