class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :name, null: false
      t.text :story
      t.text :task

      t.timestamps

      t.references :journey, null: false, foreign_key: true
    end
  end
end
