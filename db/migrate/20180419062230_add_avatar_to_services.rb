class AddAvatarToServices < ActiveRecord::Migration[5.1]
   def up
  	add_attachment :services, :avatar
  end

  def down
  	remove_attachment :services, :avatar
  end
end
