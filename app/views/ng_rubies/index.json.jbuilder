json.array!(@ng_rubies) do |ng_ruby|
  json.extract! ng_ruby, :id, :name
  json.url ng_ruby_url(ng_ruby, format: :json)
end
