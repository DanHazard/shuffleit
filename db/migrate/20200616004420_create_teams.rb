class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins, :default => 0
      t.integer :losses, :default => 0

      t.timestamps
    end
  end
end
