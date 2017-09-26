json.extract! cart, :id, :total, :amount, :equipment_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
