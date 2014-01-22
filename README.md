README
==========

Users - `name, email, password, role`

- Admins
	- Can manage all topics
	- Can manage all authors
	- Can manage all comments
	- Can manage all videos
	- Can manage all video_links

- Authors
	- Can add topics
	- Can add videos to a topic
	- Can add comments to videos
	- Can add video_links to videos
	- Can manage own topic
	- Can manage own videos
	- Can manage own video_comments
	- Can manage own video_links

Topic - `subject, description`
- Has a topic_video
- Can have many video_comments
- Can have many video_links

TopicVideo - `source, title, description`
- Belongs to a topic
- Has time
- Can have many video_comments
- Can have many video_links

VideoComment - `text, time`
- Belongs to a topic_video
- Belongs to an author

VideoLink - `source, note, time`
- Belongs to a topic_video
- Belongs to an author
