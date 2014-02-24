README
==========

Users - `email, password, role`

- Admins
	- Can manage all topics
	- Can manage all authors
	- Can manage all videos
	- Can manage all comments

- Authors
	- Can add topics
	- Can add videos to a topic
	- Can add comments to videos
	- Can add  to videos
	- Can add authors to own topic
	- Can manage own topic
	- Can manage own videos
	- Can manage own comments

Topic - `title, description`

- has many videos
- Can have many authors

Video - `source, title, description`

- Belongs to a topic
- Has time
- Can have many comments
- Can have many 

Comment - `text, time`

- Belongs to a videos
- Belongs to an author

VideoLink - `source, note, time`

- Belongs to a videos
- Belongs to an author
