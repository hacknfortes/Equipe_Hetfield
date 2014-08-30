class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
      t.integer :cloned_from_id
      t.integer :usuario_id
      t.string :titulo
      t.text :descricao
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
