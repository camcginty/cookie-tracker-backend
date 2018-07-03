class AddUserToCookies < ActiveRecord::Migration[5.1]
  def change
    add_reference :cookies, :user, foreign_key: true
  end
end
