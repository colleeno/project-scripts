class Star < ApplicationRecord
  belongs_to :user
  belongs_to :script
end
