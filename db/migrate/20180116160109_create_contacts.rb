class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :person_name
      t.string :person_phone
      t.string :person_email
      t.string :person_position
      
      t.timestamps
    end

    add_reference :contacts, :entity, foreign_key: true
  end
end
