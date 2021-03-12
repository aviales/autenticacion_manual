json.extract! story, :id, :title, :picture, :content, :created_at, :updated_at
json.url story_url(story, format: :json)
