class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :script, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
