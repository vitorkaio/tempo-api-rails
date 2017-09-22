class CreateTestes < ActiveRecord::Migration[5.1]
  def change
    create_table :testes do |t|
      t.string :descricao
      t.text :bio

      t.timestamps
    end
  end
end
