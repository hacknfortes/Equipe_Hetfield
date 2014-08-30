json.array!(@votos) do |voto|
  json.extract! voto, :id, :receita_id, :categoria_id, :usuario_id, :like, :comentario
  json.url voto_url(voto, format: :json)
end
