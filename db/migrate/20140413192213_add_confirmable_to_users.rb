class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :confirmed_at
    add_column :users, :confirmed_at, :datetime
    User.update_all(:confirmed_at => Time.now)
  end
end
