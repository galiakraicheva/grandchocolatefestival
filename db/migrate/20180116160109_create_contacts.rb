class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :person_one_name
      t.string :person_one_phone
      t.string :person_one_email
      t.string :person_one_position
      t.string :person_two_name
      t.string :person_two_phone
      t.string :person_two_email
      t.string :person_two_position
      t.string :person_three_name
      t.string :person_three_phone
      t.string :person_three_email
      t.string :person_three_position

      t.timestamps
    end

    add_reference :contacts, :entity, foreign_key: true
  end
end
