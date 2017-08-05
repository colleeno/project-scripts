class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.string :quote
      t.string :character
      t.string :show
      t.timestamps
    end
  end
end
