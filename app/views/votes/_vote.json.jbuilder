json.extract! vote, :id, :user_id, :scenery_id, :vote_point, :created_at, :updated_at
json.url vote_url(vote, format: :json)
