class AddRefToScripts < ActiveRecord::Migration[5.1]
  def change
    add_reference :scripts, :category, index: true, foreign_key: true
  end
end
