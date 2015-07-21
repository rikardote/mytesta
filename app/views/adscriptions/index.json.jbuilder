json.array!(@adscriptions) do |adscription|
  json.extract! adscription, :id, :cod, :name
  json.url adscription_url(adscription, format: :json)
end
