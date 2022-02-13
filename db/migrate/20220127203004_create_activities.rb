class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      # t.string :picture
      # t.string :hoovered_picture

      t.timestamps
    end
  end
end
