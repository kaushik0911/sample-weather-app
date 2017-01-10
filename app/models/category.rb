# models/category.rb
class Category < ApplicationRecord
  has_many :weather_categories
  has_many :weather_data, through: :weather_categories
end
