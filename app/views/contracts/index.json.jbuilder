json.array!(@contracts) do |contract|
  json.extract! contract, :title, :description
  json.url contract_url(contract, format: :json)
end