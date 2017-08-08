class Category < ApplicationRecord
  has_many :scripts, dependent: :destroy
  def to_param
    name
  end
end
