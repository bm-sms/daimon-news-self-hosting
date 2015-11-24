class RecentArrivalPosts::Cell < Cell::Concept
  include ::Cell::Erb

  def index(count: 10)
    @posts = Post.order(:created_at => :desc).limit(count)

    render
  end
end
