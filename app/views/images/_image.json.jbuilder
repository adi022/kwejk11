json.extract! image, :id, :user, :references, :title, :description, :picture, :created_at, :updated_at
json.url image_url(image, format: :json)