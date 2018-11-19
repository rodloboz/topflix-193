json.extract! movie, :id, :title, :rank, :user_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
