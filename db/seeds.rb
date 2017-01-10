User.create!([
  { email: Rails.application.secrets.ADMIN_EMAIL, \
   password: Rails.application.secrets.ADMIN_PASSWORD, \
   role: Rails.application.secrets.ADMIN_ROLE },
  { email: 'user@gmail.com', password: '123456', \
    role: 'user' }
])
Category.create!([
  { category_name: 'Japan' },
  { category_name: 'Sri Lanka' }
])
WeatherCategory.create!([
  { category_id: 1, weather_datum_id: 1 },
  { category_id: 7, weather_datum_id: 2 },
  { category_id: 8, weather_datum_id: 2 },
  { category_id: 1, weather_datum_id: 3 },
  { category_id: 1, weather_datum_id: 5 },
  { category_id: 9, weather_datum_id: 5 },
  { category_id: 1, weather_datum_id: 6 },
  { category_id: 1, weather_datum_id: 7 },
  { category_id: 1, weather_datum_id: 8 },
  { category_id: 10, weather_datum_id: 8 },
  { category_id: 12, weather_datum_id: 10 },
  { category_id: 1, weather_datum_id: 10 },
  { category_id: 11, weather_datum_id: 9 }
])
WeatherDatum.create!([
  { city_id: 1241622, \
    city_name: 'Kandy', description: 'few clouds', \
    imperial: 50.0, metric: 10.0, kelvin: 283.15 },
  { city_id: 1796236, city_name: 'Shanghai', \
    description: 'light rain', imperial: 54.46, \
    metric: 12.48, kelvin: 285.63 },
  { city_id: 1850147, city_name: 'Tokyo', \
    description: 'few clouds', imperial: 34.95, \
    metric: 1.98, kelvin: 275.13 },
  { city_id: 1248991, city_name: 'Colombo', \
    description: 'sky is clear', imperial: 80.6, \
    metric: 28.0, kelvin: 301.15 }
])
