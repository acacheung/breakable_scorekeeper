class RemoveIdentitiesTable < ActiveRecord::Migration
  def up
    drop_table :identities
  end

  def down
    create_table :identities do |t|
      t.string :username
      t.string :token
      t.string :account_type
      t.integer :account_id
      t.string :reset_token
      t.string :remember_token
      t.string :type

      t.timestamps
    end
  end
end
