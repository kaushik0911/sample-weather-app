class WeatherDataTempColChange < ActiveRecord::Migration[5.0]
  def up
    rename_column :weather_data, :fahrenheit, :imperial
    rename_column :weather_data, :celsius, :metric
  end
end
