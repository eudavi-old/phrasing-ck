class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :capa
      t.string :resumo
      t.string :descricao
      t.string :video
      t.timestamps
    end
  end
end
