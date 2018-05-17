class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :fecha
      t.integer :horario

      t.timestamps
    end
  end
end
