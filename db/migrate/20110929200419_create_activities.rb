class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :ShortDescription
      t.string :LongDescription
      t.integer :ScheduleFlexibility
      t.integer :LocationFlexibility
      t.boolean :IsOutdoors
      t.boolean :IsSocial
      t.integer :PhysicalActivityLevel
      t.integer :MentalActivityLevel
      t.decimal :Cost
      t.integer :Duration

      t.timestamps
    end
  end
end
