class CreateWeatherCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :weather_categories do |t|

      t.belongs_to :category, index: true
      t.belongs_to :weather_datum, index: true

      t.timestamps
    end
  end
end
