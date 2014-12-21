class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.json :payload

      t.timestamps null: false
    end
  end
end
