class CreateEventTrackers < ActiveRecord::Migration
  def change
    create_table :event_trackers do |t|
      t.string :date
      t.text :description
      t.boolean :requires_ID
      t.integer :capacity
      t.text :directions

      t.timestamps
    end
  end
end
