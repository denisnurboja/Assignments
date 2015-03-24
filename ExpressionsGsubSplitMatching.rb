# Assignment 9

# Write a Ruby script to take the string "Hello World" and split it on
#   whitespace. Show two ways to do this.

p 'Hello World'.split(/ /)
p 'Hello World'.split

# Use the Peter Piper tongue twister and split it on 'pick'
string = 'Peter Piper picked a peck of pickled peppers. '\
         'A peck of pickled peppers Peter Piper picked. '\
         'If Peter Piper picked a peck of pickled peppers, '\
         'Where\'s the peck of pickled peppers Peter Piper '\
         'picked?'.split('pick')
p string

# Use gsub only to change the first passage to the second
#   using the fewest amount of commands:
string = 'You have brains in your head. You have feet in your shoes. '\
         'You can steer yourself any direction you choose. '\
         'You\'re on your own. '\
         'And you know what you know. And YOU are the one '\
         'who\'ll decide where to go...'
p string.gsub('You', 'I').gsub('your', 'my').gsub('you', 'I')
  .gsub('YOU are', 'I\'M').gsub('\'re', '\'m')

# Write code to determine how many times 'sh' occurs in the following phrase:
string = 'There once was a man who had a sister, his name was Mr. Fister. Mr. '\
         'Fister\'s sister sold sea shells by the sea shore. Mr. Fister '\
         'didn\'t sell sea shells, he sold silk sheets. Mr. Fister told his '\
         'sister that he sold six silk sheets to six shieks. The sister of '\
         'Mr. Fister said I sold six shells to six shieks too!'
p string.scan(/(?=sh)/).count

# In the same phrase above, how many times does 'sh' occur
#   when followed by an 'o'? Show the code.
p string.scan(/(?=sho)/).count

# Match the word foot but not football in this phrase:
string = 'He played football despite having an artificial foot.'
p string.match(/(?<=artificial )foot/)

# Match the last sits in a phrase using this phrase:
string = 'I saw Susie sitting in a shoe shine shop.'\
         'Where she sits she shines, and where she shines she sits.'
p string.match(/(?<=she shines she )sits/)
