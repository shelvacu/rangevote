json.array!(@polls) do |poll|
  json.extract! poll, :id, :text
  json.url poll_url(poll, format: :json)
end
