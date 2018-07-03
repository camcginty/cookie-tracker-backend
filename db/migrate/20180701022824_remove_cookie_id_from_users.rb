class RemoveCookieIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :cookie_id, :string
  end
end
