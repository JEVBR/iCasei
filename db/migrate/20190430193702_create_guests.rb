class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :GUID
      t.string :URL
      t.string :timestamp

      t.timestamps
    end
  end
end
