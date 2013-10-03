json.array!(@documents) do |document|
  json.extract! document, :name, :user_id
  json.url document_url(document, format: :json)
end
