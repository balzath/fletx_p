class CreateVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :vehiculos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :modelo
      t.decimal :valor
      t.string :calificacion
      t.string :estado

      t.timestamps
    end
  end
end
