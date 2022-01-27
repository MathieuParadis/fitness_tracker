class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :duration
      t.datetime :date
      t.belongs_to :user, index: true
      t.belongs_to :activity, index: true

      t.timestamps
    end
  end
end
