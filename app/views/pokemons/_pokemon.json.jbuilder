json.extract! pokemon, :id, :name, :is_active, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
