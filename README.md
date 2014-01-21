README
==========

Users - `username, email, role, comments, videos, links`

- Admin
	- Can create/remove topics
	- Can upload `videos` to a `topic`
	- Can comment on `videos`
	- Can create `links`
	- Can remove any `Authors`
	- Can remove any `videos`
	- Can remove any `comments`

- Author
	- Can create topics
	- Can upload `videos` to a `topic`
	- Can comment on `videos`
	- Can create `links`
	- Can edit/remove own topic
	- Can edit/remove own videos
	- Can edit/remove own comments

Topic - `date-time, headline, body, author, points`

- has many videos

Video - `source, author, date time, points`

- Has many `comments`
- Has many `links`

Comment - `date-time, video-time, text, author, points`

- Belongs to a `video`
- Belongs to an `author`

Link - `source, author, date time, text, points`

- Belongs to a `video`
- Belongs to an `author`
