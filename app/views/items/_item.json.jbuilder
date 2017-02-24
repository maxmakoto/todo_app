json.extract! item, :id, :desc, :todo_flag, :list_id, :created_at, :updated_at
json.url item_url(item, format: :json)
