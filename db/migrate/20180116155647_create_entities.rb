class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :common_name, null: false
      t.string :website
      t.string :fb_page
      t.string :description
      t.string :progress
      t.boolean :is_participant
      t.boolean :is_sponsor
      t.boolean :is_media
      t.boolean :is_partner
      t.text :comments
      t.string :country, null: false

      t.timestamps
    end
  end
end
