class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.references :receita, index: true
      t.references :categoria, index: true
      t.references :usuario, index: true
      t.boolean :like
      t.string :comentario

      t.timestamps
    end
  end
end
