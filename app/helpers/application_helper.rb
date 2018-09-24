module ApplicationHelper
  def post_path(post)
    "#{post.domain}/#{post.slug}"
  end
end
