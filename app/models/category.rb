class Category < ApplicationRecord
  has_many :scripts, dependent: :destroy
end
