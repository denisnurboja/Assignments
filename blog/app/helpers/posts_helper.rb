module PostsHelper
  def date_created
    @posts.each do |date|
      date.created_at.strftime('%B %d, %Y')
    end
  end
end
