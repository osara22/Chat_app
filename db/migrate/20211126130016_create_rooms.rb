class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :join_password
      t.string :delete_password, null: false

      t.timestamps
    end
  end
end
