json.post do
  json.partial! @post, locale: {post: @post}
end