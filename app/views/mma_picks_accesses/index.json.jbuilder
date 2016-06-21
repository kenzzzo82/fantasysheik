json.array!(@mma_picks_accesses) do |mma_picks_access|
  json.extract! mma_picks_access, :id
  json.url mma_picks_access_url(mma_picks_access, format: :json)
end
