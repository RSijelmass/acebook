# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'all_sites.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
	t = Source.new
	t.url = row['site']
	t.type_one = row['type1']
	t.type_two = row['type2']
	t.type_three = row['type3']
	t.notes = row['notes']
	t.location = row['location']
	t.source = row['source']
	t.save
end

