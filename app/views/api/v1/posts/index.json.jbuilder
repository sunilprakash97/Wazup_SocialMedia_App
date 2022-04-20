json.posts do
  json.partial! partial: 'api/v1/posts/post', as: :post, collection: @posts
end