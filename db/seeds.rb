# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!( :email                 => 'admin@gmail.com', 
					  :role                  => 'admin',
					  :password              => 'qwerty',
					  :password_confirmation => 'qwerty')

User.create!( :email                 => 'dude@gmail.com', 
					  :role                  => 'author',
					  :password              => 'qwerty',
					  :password_confirmation => 'qwerty')

# -----------------------------------------------------------

topics = Topic.create!( :title => 'Fitness',
						:description => 'Excercise, dieting, sports')
Topic.create!( :title => 'Music',
						:description => 'The music you liek to listen to')
Topic.create!( :title => 'Rails',
						:description => 'Instructional videos')