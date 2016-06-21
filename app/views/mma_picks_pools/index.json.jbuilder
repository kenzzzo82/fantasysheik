json.array!(@mma_picks_pools) do |mma_picks_pool|
  json.extract! mma_picks_pool, :id, :name, :expires, :poolowner
  json.url mma_picks_pool_url(mma_picks_pool, format: :json)
end
