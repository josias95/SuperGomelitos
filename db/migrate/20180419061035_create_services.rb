class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
