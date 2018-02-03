class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :role

      t.timestamps
    end

    add_reference :entities, :user, foreign_key: true
  end
end
