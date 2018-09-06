json.extract! weather, :id, :address, :tenki, :gaiyo, :kion, :max, :min, :kosui, :nichiji, :created_at, :updated_at
json.url weather_url(weather, format: :json)
