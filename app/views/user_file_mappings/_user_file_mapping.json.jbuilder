json.extract! user_file_mapping, :id, :file_id, :user_id, :file_name, :created_at, :updated_at
json.url user_file_mapping_url(user_file_mapping, format: :json)
