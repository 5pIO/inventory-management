class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.belongs_to :sublocation, index: true, foreign_key: true
      t.belongs_to :subcategory, index: true, foreign_key: true
      t.integer :stock

      t.timestamps null: false
    end
  end
end
