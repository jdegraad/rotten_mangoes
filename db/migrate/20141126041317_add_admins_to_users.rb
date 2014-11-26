class AddAdminsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean

    reversible do |dir|
      dir.up { User.update_all admin: false }
    end
  end
end
