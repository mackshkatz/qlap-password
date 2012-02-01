class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :user_id
      t.integer :organization_id
      t.integer :role_id

      t.timestamps
    end
  end
end
