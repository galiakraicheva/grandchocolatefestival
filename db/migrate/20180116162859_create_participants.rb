class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :stand_number, null: false
      t.string :access_token, null: false


      t.timestamps
    end

    add_reference :participants, :entity, foreign_key: true
    add_reference :participants, :questionnaire, foreign_key: true
  end
end
