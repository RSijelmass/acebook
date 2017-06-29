class AddUserIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
  end
end
