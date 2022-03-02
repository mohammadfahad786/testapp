json.extract! post, :id, :title, :string, :content, :category_id, :integer, :created_at, :updated_at
json.url post_url(post, format: :json)
