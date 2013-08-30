json.array!(@catalogs) do |catalog|
  json.extract! catalog, :title, :destination, :url
  json.url catalog_url(catalog, format: :json)
end
