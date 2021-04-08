class CreateStreaks < ActiveRecord::Migration[6.1]
  def change
    create_table :streaks do |t|
      t.string :name
      t.string :reward

      t.timestamps
    end
  end
end
