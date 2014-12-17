json.array!(@tags) do |tag|
  json.extract! tag, :id, :tags, :sub_category_id
  json.url tag_url(tag, format: :json)
end
