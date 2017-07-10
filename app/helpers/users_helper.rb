module UsersHelper
  def user_has_post(user)
    user.posts.any?
  end

  def user_has_comment(user)
    user.comments.any?
  end
end
