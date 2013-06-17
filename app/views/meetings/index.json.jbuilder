json.array!(@meetings) do |meeting|
  json.extract! meeting, :starts_on
  json.url meeting_url(meeting, format: :json)
end
