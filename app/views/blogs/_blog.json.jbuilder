json.extract! blog, :id, :b_title, :created_at, :updated_at
json.url blog_url(blog, format: :json)
