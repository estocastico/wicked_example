json.extract! user, :id, :email, :password_diggest, :name, :twitter_username, :github_username, :website, :date_of_birth, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)