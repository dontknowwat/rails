json.array!(@tests) do |test|
  json.extract! test, :id, :test, :test1
  json.url test_url(test, format: :json)
end
