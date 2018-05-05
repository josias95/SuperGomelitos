class AddNewValuesToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :categoria, :string
  end
end
