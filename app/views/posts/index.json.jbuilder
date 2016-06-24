json.array!(@posts) do |post|
  json.extract! post, :id, :titile, :text
  json.url post_url(post, format: :json)
end
