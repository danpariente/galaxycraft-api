class CreatePaths < ActiveRecord::Migration[7.0]
  def change
    create_table :paths do |t|
      t.belongs_to :student
      t.belongs_to :journey

      t.timestamps
    end
  end
end
