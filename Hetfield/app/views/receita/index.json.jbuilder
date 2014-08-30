json.array!(@receita) do |receitum|
  json.extract! receitum, :id, :cloned_from_id, :usuario_id, :titulo, :descricao, :deleted_at
  json.url receitum_url(receitum, format: :json)
end
