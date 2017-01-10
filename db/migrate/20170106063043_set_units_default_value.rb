class SetUnitsDefaultValue < ActiveRecord::Migration[5.0]
  def up
    change_column_default :weather_data, :imperial, 0.0
    change_column_default :weather_data, :metric, 0.0
    change_column_default :weather_data, :kelvin, 0.0
    change_column_default :weather_data, :description, 'no description'
  end
end
