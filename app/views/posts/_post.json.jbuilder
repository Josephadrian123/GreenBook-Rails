json.extract! post, :id, :user_id, :text, :media, :created_at, :updated_at
json.url post_url(post, format: :json)
