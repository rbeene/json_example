class CreateDynamics < ActiveRecord::Migration
  def change
    create_table :dynamics do |t|
      t.jsonb :payload

      t.timestamps null: false
    end
  end
end
