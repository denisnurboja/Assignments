json.array!(@supercomputers) do |supercomputer|
  json.extract! supercomputer, :id, :rank, :name, :city, :country, :speed, :memory, :power
  json.url supercomputer_url(supercomputer, format: :json)
end
