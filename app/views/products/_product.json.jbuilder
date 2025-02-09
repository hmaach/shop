json.extract! product, :id, :brand, :model, :description, :condition, :finish, :title, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
