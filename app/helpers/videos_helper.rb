module VideosHelper
  def youtube_embed(youtube_url, width=640, height=480)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end

    %Q{<iframe title="YouTube video player" width="#{width}" height="#{height}" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
  end

  def is_video_owner?
    current_user.id == @video.user_id
  end

  def is_comment_owner?(comment)
    current_user.id == comment.user_id
  end
end


