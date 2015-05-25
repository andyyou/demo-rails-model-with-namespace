json.array!(@admin_fathers) do |admin_father|
  json.extract! admin_father, :id, :name
  json.url admin_father_url(admin_father, format: :json)
end
