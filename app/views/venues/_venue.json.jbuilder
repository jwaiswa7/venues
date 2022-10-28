json.extract! venue, :id, :name, :user_id, :details, :created_at, :updated_at
json.url venue_url(venue, format: :json)
