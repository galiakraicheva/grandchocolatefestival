class CreateExternalUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :external_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
