class CreateTableCategoriasReceitas < ActiveRecord::Migration
  def change
    create_table :categorias_receitas, :id => false do |t|
      t.integer :categoria_id
      t.integer :receita_id
    end
  end
end
