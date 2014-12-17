json.array!(@questions) do |question|
  json.extract! question, :id, :title, :body, :bounty, :prospect, :user_id
  json.url question_url(question, format: :json)
end
