json.array!(@answers) do |answer|
  json.extract! answer, :id, :title, :body, :proposta, :value, :prospect, :user_id, :question_id
  json.url answer_url(answer, format: :json)
end
