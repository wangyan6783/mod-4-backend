class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
