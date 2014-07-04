json.array!(@businesses) do |business|
  json.extract! business, :id, :user_id, :url, :email, :phone
  json.url business_url(business, format: :json)
end
