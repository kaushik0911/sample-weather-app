# models/category.rb
class Category < ApplicationRecord
  has_many :weather_categories, dependent: :destroy
  has_many :weather_data, through: :weather_categories

  validates :category_name, presence: true
  validates :weather_data, presence: false
end
