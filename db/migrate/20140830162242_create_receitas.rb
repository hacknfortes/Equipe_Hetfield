class CreateReceitas < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
      t.integer :cloned_from_id
      t.integer :usuario_id
      t.string :titulo
      t.text :descricao
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
