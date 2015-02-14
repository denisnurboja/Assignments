require 'Date'

load 'blog.rb'
load 'post.rb'

# Prompt author to input blog details.
puts ' '
puts 'Let\'s start a new blog post!'
puts ' '
print 'What is the name of this blog? '
name = gets.chomp.split.map(&:capitalize).join(' ')
if name.empty?
  print 'Please enter the blog name before continuing. '
  name = gets.chomp.split.map(&:capitalize).join(' ')
end
print 'Who is the author? '
user_name = gets.chomp.split.map(&:capitalize).join(' ')
if user_name.empty?
  print 'Please enter the author\'s name before continuing. '
  user_name = gets.chomp.split.map(&:capitalize).join(' ')
end
blog = Blog.new(name, user_name)
# Loop posts inside of new blog.
loop do
  print 'Post Title: '
  name = gets.chomp.split.map(&:capitalize).join(' ')
  break if name.empty?
  post = Post.new(name)
  print 'Date Published (MM/DD/YYYY): '
  post.date_published = gets.chomp
  print 'Please begin writing your masterpiece: '
  post.body = gets.chomp
  # Calculates the word count by calling split then counting the words in [].
  post.word_count = body.split(' ').length

  # Truncates the body using the slice method on the first 25 characters.
  post.summary = body.slice(0, 25) + '...'

  # Injects the post into the posts [] inside of the class 'Blog'.
  blog.posts.push(post)
  puts ' '
  puts 'To continue adding posts, please input additional information. ' \
       'Otherwise, hit the ENTER key to exit and print a summary of your ' \
       'blog post.'
  puts ' '
end

# Prompts the user they exited the blog. Gives overview of blog information.
puts ' '
puts 'You have exited the blog writing platform.'
puts ' '
puts 'Here is your an overview of your masterpiece: '
puts ' '
print ' | Blog Name: ', blog.name, ' | Author: ', blog.user_name, "\n"
puts ' '

# Displays all informatin regarding the post.
blog.posts.each do |p|
  print ' | Post Name: ', p.name, ' | Date Published: ', p.date_published, "\n"
  print ' | Summary: ', p.summary, "\n"
  puts ' '
  print ' | Body: ', p.body, "\n"
  puts ' '
  print ' | Word Count: ', p.word_count, "\n"
end
puts ' '
