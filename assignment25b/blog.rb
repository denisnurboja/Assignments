class Blog
  attr_accessor :name, :user_name, :posts

  def initialize(name, user_name)
    @posts = []
    @name = name
    @user_name = user_name
  end
end
