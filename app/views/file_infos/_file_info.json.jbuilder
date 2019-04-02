json.extract! file_info, :id, :path, :checksum, :redundant_count, :parent_id, :created_at, :updated_at
json.url file_info_url(file_info, format: :json)
