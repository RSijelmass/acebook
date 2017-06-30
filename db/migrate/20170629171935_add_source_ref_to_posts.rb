class AddSourceRefToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :source, foreign_key: true
  end
end
