# models/weather_category.rb
class WeatherCategory < ApplicationRecord
  belongs_to :category
  belongs_to :weather_datum
end
