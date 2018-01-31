class DropExternalUsers < ActiveRecord::Migration[5.1]
  def down
    drop_table :external_users
  end
end
