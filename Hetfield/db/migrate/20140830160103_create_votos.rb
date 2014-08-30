class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.integer :receita_id
      t.integer :categoria_id
      t.integer :usuario_id
      t.boolean :like
      t.text :comentario

      t.timestamps
    end
  end
end
