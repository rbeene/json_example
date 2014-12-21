class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.references :user, index: true
      t.jsonb :payload

      t.timestamps null: false
    end
    add_foreign_key :charges, :users
  end
end
