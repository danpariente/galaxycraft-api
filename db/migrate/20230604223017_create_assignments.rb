class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.text :submission
      t.datetime :submitted_at
      t.boolean :approved, null: false, default: false

      t.timestamps

      t.references :quest, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
    end
  end
end
