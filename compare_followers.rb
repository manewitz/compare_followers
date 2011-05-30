require "rubygems"
require "twitter"

def compare_followers(first, second)
  user_a = Twitter.user(first)
  user_b = Twitter.user(second)
  
  if user_a.followers_count > user_b.followers_count
    puts first + " wins!"
  elsif user_b.followers_count > user_a.followers_count
    puts second + " wins!"
  else
    puts "It's a tie!"
  end
end

puts "Twitter Battle 1.0"
puts "------------------"
puts "Enter a Twitter username:"
first = gets.chomp
puts "Enter another Twitter username to compare it to:"
second = gets.chomp
puts
compare_followers(first, second)