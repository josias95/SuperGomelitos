class CreateTracings < ActiveRecord::Migration[5.1]
  def change
    create_table :tracings do |t|
      t.string :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
