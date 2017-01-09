User.create!([
  {email: "admin@mail.com", encrypted_password: "$2a$11$ySWI.0yQQL2VKCrygIMQhuvhd0HvMyTgtarJczBm3yQBj9MXOi1Ai", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 17, current_sign_in_at: "2017-01-09 13:22:55", last_sign_in_at: "2017-01-09 12:30:47", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", role: "admin"},
  {email: "user@gmail.com", encrypted_password: "$2a$11$2NUyQpTqLmiVVK209GmoeOSrRFze5hhNqaJzXAxiM8F.x471fVbza", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 22, current_sign_in_at: "2017-01-09 13:23:15", last_sign_in_at: "2017-01-09 10:34:15", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", role: "user"}
])
Category.create!([
  {category_name: "Japan"},
  {category_name: "Sri Lanka"}
])
WeatherCategory.create!([
  {category_id: 1, weather_datum_id: 1},
  {category_id: 7, weather_datum_id: 2},
  {category_id: 8, weather_datum_id: 2},
  {category_id: 1, weather_datum_id: 3},
  {category_id: 1, weather_datum_id: 5},
  {category_id: 9, weather_datum_id: 5},
  {category_id: 1, weather_datum_id: 6},
  {category_id: 1, weather_datum_id: 7},
  {category_id: 1, weather_datum_id: 8},
  {category_id: 10, weather_datum_id: 8},
  {category_id: 12, weather_datum_id: 10},
  {category_id: 1, weather_datum_id: 10},
  {category_id: 11, weather_datum_id: 9}
])
WeatherDatum.create!([
  {city_id: 1241622, city_name: "Kandy", description: "few clouds", imperial: 50.0, metric: 10.0, kelvin: 283.15},
  {city_id: 1796236, city_name: "Shanghai", description: "light rain", imperial: 54.46, metric: 12.48, kelvin: 285.63},
  {city_id: 1850147, city_name: "Tokyo", description: "few clouds", imperial: 34.95, metric: 1.98, kelvin: 275.13},
  {city_id: 1248991, city_name: "Colombo", description: "sky is clear", imperial: 80.6, metric: 28.0, kelvin: 301.15}
])
