class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :activity_id
      t.boolean :vote_up
      t.boolean :vote_down

      t.timestamps
    end
  end
end
