class Tag < ApplicationRecord
  belongs_to :script
  belongs_to :category
end
