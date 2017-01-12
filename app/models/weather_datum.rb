# models/weather_datum.rb
class WeatherDatum < ApplicationRecord
  has_many :weather_categories
  has_many :categories, through: :weather_categories

  accepts_nested_attributes_for :categories

  validates :city_name, presence: { :message => "city name cannot be blank" }
  validates :city_id, presence: { :message => "city id cannot be blank" }
end
