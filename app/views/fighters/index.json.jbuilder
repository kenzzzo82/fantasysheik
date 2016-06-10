json.array!(@fighters) do |fighter|
  json.extract! fighter, :id, :name, :weight, :height, :wins, :losses, :kos, :submissions, :decisions
  json.url fighter_url(fighter, format: :json)
end
