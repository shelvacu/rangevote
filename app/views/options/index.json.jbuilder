json.array!(@options) do |option|
  json.extract! option, :id, :poll_id, :text, :total_vote, :num_voted
  json.url option_url(option, format: :json)
end
