json.extract! user, :id, :username, :password, :phone, :email, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
