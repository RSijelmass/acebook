class CreateSource < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
			t.string :url
			t.string :type_one
			t.string :type_two
			t.string :type_three
			t.string :notes
			t.string :location
			t.string :source

			t.timestamps
    end
  end
end
