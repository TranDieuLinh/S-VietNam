json.extract! image, :id, :user_id, :title, :scenery_name, :scenery_address, :scenery_picture, :description, :vote_counts, :scenery_votepoint, :created_at, :updated_at
json.url image_url(image, format: :json)
