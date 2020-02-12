class CreateCitizens < ActiveRecord::Migration[5.2]
  def change
    create_table :citizens do |t|
      t.string :dni
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :prenombres
      t.integer :sexo
      t.integer :estado_civil
      t.date :nacimiento
      t.string :foto
      t.date :sele1
      t.date :sele2
      t.string :sele3
      t.integer :sele4

      t.timestamps
    end
  end
end
