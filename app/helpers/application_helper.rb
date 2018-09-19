module ApplicationHelper
  def post_path(post)
    "#{post.category}/#{post.slug}"
  end
end
