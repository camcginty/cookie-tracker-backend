class AddCookieRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :cookie_id, foreignkey:true
  end
end
