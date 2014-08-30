json.array!(@receitas) do |receita|
  json.extract! receita, :id, :cloned_from_id, :usuario_id, :titulo, :descricao, :deleted_at
  json.url receita_url(receita, format: :json)
end
