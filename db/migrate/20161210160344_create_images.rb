class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :user
      t.string :references
      t.string :title
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
