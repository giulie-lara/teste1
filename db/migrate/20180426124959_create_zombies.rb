class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :nome
      t.integer :idade
      t.datetime :nascimento
      t.date :admissao
      t.bodean :apodrecendo
      t.float :salario
      t.decimal :heranca
      t.string :email
      t.text :bio

      t.timestamps null: false
    end
  end
end
