json.array!(@stories) do |story|
  json.extract! story, :id, :date, :subject, :note, :comment
  json.url story_url(story, format: :json)
end
