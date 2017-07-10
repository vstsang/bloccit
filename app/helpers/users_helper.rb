module UsersHelper
  def display_posts_and_comments(user)
    if @user.posts.count.zero? && @user.comments.count.zero?
      content_tag :h3, "#{user.name} has not submitted any posts yet."
    else
      content_tag :h2 do
        concat content_tag :p, 'Posts'
        concat content_tag :small,
          @user.posts.each do |post|
            render({ partial: 'posts/post', locals: {post: post} })
          end
        concat content_tag :p, 'Comments'
        concat content_tag :small,
          @user.comments.each do |comment|
            render({ partial: 'comments/comment', locals: {comment: comment} })
          end
      end
    end
  end
end
