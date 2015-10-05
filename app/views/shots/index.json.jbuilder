json.array!(@shots) do |shot|
  json.extract! shot, :id, :name, :description, :note
  json.url shot_url(shot, format: :json)
end
