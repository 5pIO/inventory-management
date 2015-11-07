json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :sublocation_id, :subcategory_id, :stock
  json.url item_url(item, format: :json)
end
