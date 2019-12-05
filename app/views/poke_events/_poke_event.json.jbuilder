json.extract! poke_event, :id, :user_id, :land_mark_id, :title, :description, :created_at, :updated_at
json.url poke_event_url(poke_event, format: :json)
