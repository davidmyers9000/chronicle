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

User.create!( :email                 => 'dude2@gmail.com', 
                          :role                  => 'author',
                          :password              => 'qwerty',
                          :password_confirmation => 'qwerty')

# -----------------------------------------------------------

groups = Group.create!( :title => 'Fitness',
                                                :description => 'Excercise, dieting, sports')
Group.create!( :title => 'Music',
                             :description => 'The music you liek to listen to')
Group.create!( :title => 'Rails',
                             :description => 'Instructional videos')

# -----------------------------------------------------------

videos = Video.create!( :group_id    => 1,
                        :source      => 'http://www.youtube.com/watch?v=GJFjYyA40ss',
                        :title       => 'Overhead Press',
                        :description => 'Basics of performing the Overhead press',
                        :user_id         => 1
  )

# -----------------------------------------------------------
comments = Comment.create!(
    :source   => 'http://www.youtube.com/watch?v=ubx4vitxsPs', 
    :text     => "Here's more information about the OHP including ways to add it into your training routine.", 
    :user_id  => 2, 
    :video_id => 1)

Comment.create!(
    :source   => 'http://www.youtube.com/watch?v=gMqnRdonbQA', 
    :text     => "Hey guys, what do you think of my form?", 
    :user_id  => 3, 
    :video_id => 1)

Comment.create!(
    :source   => 'http://www.youtube.com/watch?v=af-PHacdX0U', 
    :text     => "Looks pretty good. You should watch the part at 1:48 about rounding the back and extending the spine", 
    :user_id  => 2, 
    :video_id => 1)

Comment.create!(
    :source   => '', 
    :text     => "That was a huge help, thanks!", 
    :user_id  => 3, 
    :video_id => 1)