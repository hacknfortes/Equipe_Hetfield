json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :nome
  json.url categoria_url(categoria, format: :json)
end
