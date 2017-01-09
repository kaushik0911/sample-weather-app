class WeatherDatum < ApplicationRecord
  has_many :weather_categories
  has_many :categories, through: :weather_categories

  accepts_nested_attributes_for :categories
end
