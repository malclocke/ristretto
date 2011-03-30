class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :role
      t.references :user
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
