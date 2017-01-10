class CreateWeatherData < ActiveRecord::Migration[5.0]
  def up
    create_table :weather_data do |t|
      t.integer :city_id, null: false
      t.string :city_name
      t.string :description
      t.float :fahrenheit
      t.float :celsius
      t.float :kelvin
      t.timestamps
    end
  end

  def down
    drop_table :weather_data
  end
end
