class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.string :password
      t.integer :organization_id

      t.timestamps
    end
  end
end
