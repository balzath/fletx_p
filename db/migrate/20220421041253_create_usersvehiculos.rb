class CreateUsersvehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :usersvehiculos do |t|
      t.references :user, foreign_key: true
      t.references :vehiculo, foreign_key: true
      t.decimal :horas
      t.string :estado

      t.timestamps
    end
  end
end
