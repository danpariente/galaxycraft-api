class CreateJourneys < ActiveRecord::Migration[7.0]
  def change
    create_table :journeys do |t|
      t.string :name, null: false
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
