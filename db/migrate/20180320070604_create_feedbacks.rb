class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.string :year_participation
      t.string :stand_size
      t.string :stand_price
      t.string :communication_with_organizer
      t.string :ad_coverage
      t.string :media_coverage
      t.string :communication_with_visitors
      t.string :visitor_interest
      t.string :visitor_number
      t.string :stand_attractions
      t.string :participation_improvements
      t.string :organization_improvements
      t.text :comments

      t.timestamps
    end

    add_reference :participants, :feedback, foreign_key: true
  end
end
