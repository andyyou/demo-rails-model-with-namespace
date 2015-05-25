json.array!(@admin_sons) do |admin_son|
  json.extract! admin_son, :id, :name, :admin_father_id
  json.url admin_son_url(admin_son, format: :json)
end
