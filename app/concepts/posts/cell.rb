class Posts::Cell < Cell::Concept
  include ::Cell::Erb

  def recent_arrival(count: 10)
    @posts = Post.order(:created_at => :desc).limit(count)
    @title = '新着記事一覧'

    render view: :index
  end

  def popular(count: 10)
    @posts = Post.order(:created_at => :desc).limit(count) # XXX 人気記事を表示する
    @title = '人気記事一覧'

    render view: :index
  end
end
