class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.boolean :is_single_person

      t.timestamps
    end
  end
end
