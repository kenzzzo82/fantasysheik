json.array!(@fights) do |fight|
  json.extract! fight, :id, :fighter1, :fighter2, :favorite, :points
  json.url fight_url(fight, format: :json)
end
