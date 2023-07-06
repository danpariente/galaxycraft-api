class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.jsonb :character, null: false, default: { attributes: [], skills: [] }
      t.jsonb :stats, null: false, default: { experience: 0, level: 0 }

      t.timestamps

      t.references :student
    end
  end
end
