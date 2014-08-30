class ReceitasCategorias < ActiveRecord::Migration
  def change
  	create_table(receitas_categorias, :primary_key => nil) do |t|
  	 t.int

  end
end
