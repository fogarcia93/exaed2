class CreateGestiones < ActiveRecord::Migration[5.0]
  def change
    create_table :gestiones do |t|
      t.integer :user_id
      t.string :nombre
      t.string :correo
      t.string :telefono
      t.string :departamento
      t.text :descripcion
      t.string :my_file

      t.timestamps
    end
  end
end
