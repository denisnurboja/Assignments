# Assignment 20

require 'active_support'
require 'active_support/all'
require 'Date'

d = Date.current

print 'The date of the current week is: ', d.beginning_of_week, "\n"

print 'The date in 30 days will be: ', d + 30.days, "\n"

one_yr_from_td = d + 1.year
print 'The day of the week in one year (from today) will be a: ', \
      one_yr_from_td.strftime('%A'), "\n"

print 'When is your birthday? (Format: MM/DD or ' \
      'MM-DD)', "\n"
birthday = gets.chomp
bd = Date.parse(2015.to_s + '/' + birthday)
print 'Your birthday falls on a ', bd.strftime('%A'), ' this year!', "\n"

print 'Enter a plural word & receive the singular version of the word.', "\n"
word = gets.chomp.capitalize
print 'Singular: ' + word.singularize, "\n"

print 'Enter a singular word & receive the plural version of the word.', "\n"
word = gets.chomp.capitalize
print 'Plural: ' + word.pluralize, "\n"

array = %w(Father Son Ghost)
print array.to_sentence, "\n"
