require 'Date'

load 'blog.rb'
load 'post.rb'

puts ' '
puts 'Let\'s start a new blog post!'
puts ' '
blog = Blog.new
print 'What is the name of this blog? '
blog.name = gets.chomp.split.map(&:capitalize).join(' ')
print 'Who is the author? '
blog.user_name = gets.chomp.split.map(&:capitalize).join(' ')
loop do
  post = Post.new
  print 'Post Title: '
  post.name = gets.chomp.split.map(&:capitalize).join(' ')
  break if post.name.empty?
  print 'Please begin writing your masterpiece: '
  post.body = gets.chomp
  post.word_count = post.body.split(' ').length
  post.summary = post.body.slice(0, 25) + '...'
  blog.posts.push(post)
  puts ' '
  puts 'To continue adding posts, please input additional information. ' \
       'Otherwise, hit the ENTER key to exit and print a summary of your ' \
       'blog post.'
  puts ' '
end
puts ' '
puts 'You have exited the blog writing platform.'
puts ' '
puts 'Here is your an overview of your masterpiece: '
puts ' '
print ' | Blog Name: ', blog.name, ' | Author: ', blog.user_name, "\n"
puts ' '
blog.posts.each do |p|
  print ' | Post Name: ', p.name, ' | Date Published: ', p.date_published, \
        "\n"
  print ' | Summary: ', p.summary, "\n"
  puts ' '
  print ' | Body: ', p.body, "\n"
  print ' | Word Count: ', p.word_count, "\n"
end
