class Category < ApplicationRecord
  has_many :tags
  has_many :scripts, through: :tags
end
