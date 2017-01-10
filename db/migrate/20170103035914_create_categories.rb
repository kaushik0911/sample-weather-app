class CreateCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :categories do |t|
      t.string :category_name
      t.timestamps
    end
  end
end
